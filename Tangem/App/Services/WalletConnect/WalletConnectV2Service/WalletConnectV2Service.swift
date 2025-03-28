//
//  WalletConnectV2Service.swift
//  Tangem
//
//

import Foundation
import Combine
import ReownWalletKit
import BlockchainSdk

protocol WalletConnectUserWalletInfoProvider: AnyObject {
    var userWalletId: UserWalletId { get }
    var signer: TangemSigner { get }
    var wcWalletModelProvider: WalletConnectWalletModelProvider { get }
}

final class WalletConnectV2Service {
    @Injected(\.walletConnectSessionsStorage) private var sessionsStorage: WalletConnectSessionsStorage
    @Injected(\.userWalletRepository) private var userWalletRepository: UserWalletRepository
    @Injected(\.keysManager) private var keysManager: KeysManager

    private let factory = WalletConnectV2DefaultSocketFactory()
    private let uiDelegate: WalletConnectUIDelegate
    private let messageComposer: WalletConnectV2MessageComposable
    private let wcHandlersService: WalletConnectV2HandlersServicing

    private var canEstablishNewSessionSubject: CurrentValueSubject<Bool, Never> = .init(true)
    private var sessionSubscriptions = Set<AnyCancellable>()
    private var messagesSubscriptions = Set<AnyCancellable>()

    var canEstablishNewSessionPublisher: AnyPublisher<Bool, Never> {
        canEstablishNewSessionSubject
            .eraseToAnyPublisher()
    }

    var newSessions: AsyncStream<[WalletConnectSavedSession]> {
        get async {
            await sessionsStorage.sessions
        }
    }

    private weak var infoProvider: WalletConnectUserWalletInfoProvider?

    init(
        uiDelegate: WalletConnectUIDelegate,
        messageComposer: WalletConnectV2MessageComposable,
        wcHandlersService: WalletConnectV2HandlersServicing
    ) {
        self.uiDelegate = uiDelegate
        self.messageComposer = messageComposer
        self.wcHandlersService = wcHandlersService

        Networking.configure(
            groupIdentifier: AppEnvironment.current.suiteName,
            projectId: keysManager.walletConnectProjectId,
            socketFactory: factory,
            socketConnectionType: .automatic
        )

        do {
            try configureWalletKit()
        } catch {
            log("WalletConnect redirect configure failure. Error: \(error.localizedDescription)")
        }

        setupSessionSubscriptions()
        setupMessagesSubscriptions()
    }

    func configureWalletKit() throws {
        let redirect = try AppMetadata.Redirect(
            native: IncomingActionConstants.universalLinkScheme,
            universal: IncomingActionConstants.tangemDomain
        )

        let metadata = AppMetadata(
            name: "Tangem iOS",
            description: "Tangem is a card-shaped self-custodial cold hardware wallet",
            url: "https://tangem.com",
            icons: ["https://user-images.githubusercontent.com/24321494/124071202-72a00900-da58-11eb-935a-dcdab21de52b.png"],
            redirect: redirect
        )

        WalletKit.configure(metadata: metadata, crypto: WalletConnectCryptoProvider())
    }

    func initialize(with infoProvider: WalletConnectUserWalletInfoProvider) {
        self.infoProvider = infoProvider
        runTask { [weak self] in
            await self?.sessionsStorage.loadSessions()
        }
    }

    func openSession(with uri: WalletConnectV2URI) {
        canEstablishNewSessionSubject.send(false)
        runTask(withTimeout: 20) { [weak self] in
            await self?.pairClient(with: uri)
        } onTimeout: { [weak self] in
            self?.displayErrorUI(WalletConnectV2Error.sessionConnetionTimeout)
            self?.canEstablishNewSessionSubject.send(true)
        }
    }

    func disconnectSession(with id: Int) async {
        guard let session = await sessionsStorage.session(with: id) else {
            log("Failed to find session with id: \(id). Attempt to disconnect session failed")
            return
        }

        do {
            log("Attempt to disconnect session with topic: \(session.topic)")
            try await WalletKit.instance.disconnect(topic: session.topic)

            Analytics.log(
                event: .sessionDisconnected,
                params: [
                    .dAppName: session.sessionInfo.dAppInfo.name,
                    .dAppUrl: session.sessionInfo.dAppInfo.url,
                ]
            )

            log("Session with topic: \(session.topic) was disconnected from SignAPI. Removing from storage")
            await sessionsStorage.remove(session)
        } catch {
            let internalError = WalletConnectV2ErrorMappingUtils().mapWCv2Error(error)
            switch internalError {
            case .sessionForTopicNotFound, .symmetricKeyForTopicNotFound:
                log("Failed to remove session with \(session.topic) from SignAPI. Reason: \(internalError.localizedDescription). Removing anyway from storage")
                await sessionsStorage.remove(session)
                return
            default:
                break
            }
            AppLog.shared.error("[WC 2.0] Failed to disconnect session with topic: \(session.topic) with error: \(error)")
        }
    }

    func disconnectAllSessionsForUserWallet(with userWalletId: String) {
        runTask { [weak self] in
            guard let self else { return }

            let removedSessions = await sessionsStorage.removeSessions(for: userWalletId)
            for session in removedSessions {
                do {
                    try await WalletKit.instance.disconnect(topic: session.topic)
                } catch {
                    AppLog.shared.error("[WC 2.0] Failed to disconnect session while disconnecting all sessions for user wallet with id: \(userWalletId). Error: \(error)")
                }
            }
        }
    }

    private func checkSocketConnection() async -> Bool {
        guard let socket = factory.lastCreatedSocket else {
            return false
        }

        if socket.currentState == .connected || socket.currentState == .readyToConnect {
            return true
        }

        do {
            let newState = try await WalletKit.instance.socketConnectionStatusPublisher
                .filter {
                    $0 == .connected
                }
                .eraseError()
                .timeout(.seconds(10), scheduler: DispatchQueue.main, customError: {
                    WalletConnectV2Error.socketConnectionTimeout
                })
                .eraseToAnyPublisher()
                .async()

            return newState == .connected
        } catch {
            log("Failed to get new connection state.\nError: \(error)")
            return false
        }
    }

    private func pairClient(with url: WalletConnectURI) async {
        guard await checkSocketConnection() else {
            Analytics.debugLog(eventInfo: Analytics.WalletConnectDebugEvent.webSocketConnectionTimeout)
            displayErrorUI(WalletConnectV2Error.socketIsNotConnected)
            canEstablishNewSessionSubject.send(true)
            return
        }

        log("Trying to pair client: \(url)")
        do {
            try await WalletKit.instance.pair(uri: url)
            try Task.checkCancellation()
            log("Established pair for \(url)")
            DispatchQueue.main.async {
                Toast(view: SuccessToast(text: Localization.walletConnectToastAwaitingSessionProposal))
                    .present(
                        layout: .top(padding: 20),
                        type: .temporary()
                    )
            }
        } catch {
            displayErrorUI(WalletConnectV2Error.pairClientError(error.localizedDescription))
            AppLog.shared.error("[WC 2.0] Failed to connect to \(url) with error: \(error)")

            // Hack to delete the topic from the user default storage inside the WC 2.0 SDK
            await disconnect(topic: url.topic)
        }
        canEstablishNewSessionSubject.send(true)
    }

    private func disconnect(topic: String) async {
        do {
            try await WalletKit.instance.disconnect(topic: topic)
            log("Success disconnect/delete topic \(topic)")
        } catch {
            AppLog.shared.error("[WC 2.0] Failed to disconnect/delete topic \(topic) with error: \(error)")
        }
    }

    // MARK: - Subscriptions

    private func setupSessionSubscriptions() {
        WalletKit.instance.sessionProposalPublisher
            .receive(on: DispatchQueue.main)
            .sink { [weak self] sessionProposal, context in
                self?.log("Session proposal: \(sessionProposal) with verify context: \(String(describing: context))")
                Analytics.debugLog(eventInfo: Analytics.WalletConnectDebugEvent.receiveSessionProposal(name: sessionProposal.proposer.name, dAppURL: sessionProposal.proposer.url))
                self?.validateProposal(sessionProposal)
            }
            .store(in: &sessionSubscriptions)

        WalletKit.instance.sessionSettlePublisher
            .receive(on: DispatchQueue.main)
            .asyncMap { [weak self] session in
                guard let self else { return }

                if infoProvider == nil {
                    log("Info provider is not setup. Saved session will miss some info")
                }

                log("Session established: \(session)")
                let savedSession = WalletConnectV2Utils().createSavedSession(
                    from: session,
                    with: infoProvider?.userWalletId.stringValue ?? ""
                )

                Analytics.log(
                    event: .newSessionEstablished,
                    params: [
                        .dAppName: session.peer.name,
                        .dAppUrl: session.peer.url,
                    ]
                )

                canEstablishNewSessionSubject.send(true)

                log("Saving session with topic: \(savedSession.topic).\ndApp url: \(savedSession.sessionInfo.dAppInfo.url)")
                await sessionsStorage.save(savedSession)
            }
            .sink()
            .store(in: &sessionSubscriptions)

        WalletKit.instance.sessionDeletePublisher
            .receive(on: DispatchQueue.main)
            .asyncMap { [weak self] topic, reason in
                guard let self else { return }

                log("Receive Delete session message with topic: \(topic). Delete reason: \(reason)")

                guard let session = await sessionsStorage.session(with: topic) else {
                    log("Receive Delete session message with topic: \(topic). Delete reason: \(reason). But session not found.")
                    return
                }

                Analytics.log(
                    event: .sessionDisconnected,
                    params: [
                        .dAppName: session.sessionInfo.dAppInfo.name,
                        .dAppUrl: session.sessionInfo.dAppInfo.url,
                    ]
                )

                log("Session with topic (\(topic)) was found. Deleting session from storage...")
                await sessionsStorage.remove(session)
            }
            .sink()
            .store(in: &sessionSubscriptions)
    }

    private func setupMessagesSubscriptions() {
        WalletKit.instance.sessionRequestPublisher
            .receive(on: DispatchQueue.main)
            .asyncMap { [weak self] request, context in
                guard let self else { return }

                Analytics.debugLog(eventInfo: Analytics.WalletConnectDebugEvent.receiveRequestFromDApp(method: request.method))
                log("Receive message request: \(request) with verify context: \(String(describing: context))")
                await handle(request)
            }
            .sink()
            .store(in: &messagesSubscriptions)
    }

    private func validateProposal(_ proposal: Session.Proposal) {
        let utils = WalletConnectV2Utils()
        log("Attemping to approve session proposal: \(proposal)")

        guard let infoProvider else {
            displayErrorUI(.missingActiveUserWalletModel)
            sessionRejected(with: proposal)
            return
        }

        guard DApps().isSupported(proposal.proposer.url) else {
            displayErrorUI(.unsupportedDApp)
            sessionRejected(with: proposal)
            return
        }

        guard utils.allChainsSupported(in: proposal.requiredNamespaces) else {
            let unsupportedBlockchains = utils.extractUnsupportedBlockchainNames(from: proposal.requiredNamespaces)
            displayErrorUI(.unsupportedBlockchains(unsupportedBlockchains))
            sessionRejected(with: proposal)
            return
        }

        do {
            let sessionNamespaces = try utils.createSessionNamespaces(
                proposal: proposal,
                walletModelProvider: infoProvider.wcWalletModelProvider
            )
            displaySessionConnectionUI(for: proposal, namespaces: sessionNamespaces)
        } catch let error as WalletConnectV2Error {
            displayErrorUI(error)
        } catch {
            AppLog.shared.error("[WC 2.0] \(error)")
            displayErrorUI(.unknown(error.localizedDescription))
        }
        canEstablishNewSessionSubject.send(true)
    }

    // MARK: - UI Related

    private func displaySessionConnectionUI(for proposal: Session.Proposal, namespaces: [String: SessionNamespace]) {
        log("Did receive session proposal")

        guard let infoProvider else {
            displayErrorUI(.missingActiveUserWalletModel)
            sessionRejected(with: proposal)
            return
        }

        let blockchains = WalletConnectV2Utils().getBlockchainNamesFromNamespaces(namespaces, walletModelProvider: infoProvider.wcWalletModelProvider)
        let message = messageComposer.makeMessage(for: proposal, targetBlockchains: blockchains)
        uiDelegate.showScreen(with: WalletConnectUIRequest(
            event: .establishSession,
            message: message,
            approveAction: { [weak self] in
                self?.sessionAccepted(with: proposal.id, namespaces: namespaces)
            },
            rejectAction: { [weak self] in
                self?.sessionRejected(with: proposal)
            }
        ))
    }

    private func displayErrorUI(_ error: WalletConnectV2Error) {
        Analytics.debugLog(eventInfo: Analytics.WalletConnectDebugEvent.errorShownToTheUser(error: error.localizedDescription))
        uiDelegate.showScreen(with: WalletConnectUIRequest(
            event: .error,
            message: error.localizedDescription,
            approveAction: {}
        ))
    }

    // MARK: - Session manipulation

    private func sessionAccepted(with id: String, namespaces: [String: SessionNamespace]) {
        runTask { [weak self] in
            guard let self else { return }

            do {
                log("Namespaces to approve for session connection: \(namespaces)")
                _ = try await WalletKit.instance.approve(proposalId: id, namespaces: namespaces)
            } catch let error as WalletConnectV2Error {
                self.displayErrorUI(error)
            } catch {
                let mappedError = WalletConnectV2ErrorMappingUtils().mapWCv2Error(error)
                displayErrorUI(mappedError)
                AppLog.shared.error("[WC 2.0] Failed to approve Session with error: \(error)")
            }
        }
    }

    private func sessionRejected(with proposal: Session.Proposal) {
        runTask { [weak self] in
            do {
                try await WalletKit.instance.rejectSession(proposalId: proposal.id, reason: .userRejected)
                self?.log("User reject WC connection")
            } catch {
                AppLog.shared.error("[WC 2.0] Failed to reject WC connection with error: \(error)")
            }
            self?.canEstablishNewSessionSubject.send(true)
        }
    }

    // MARK: - Message handling

    private func handle(_ request: Request) async {
        func respond(
            with error: WalletConnectV2Error,
            session: WalletConnectSavedSession?,
            blockchainCurrencySymbol: String?
        ) async {
            AppLog.shared.error(error)

            logAnalytics(
                request: request,
                session: session,
                blockchainCurrencySymbol: blockchainCurrencySymbol,
                error: error
            )

            try? await WalletKit.instance.respond(
                topic: request.topic,
                requestId: request.id,
                response: .error(.init(code: 0, message: error.localizedDescription))
            )
        }

        let logSuffix = " for request: \(request)"
        let utils = WalletConnectV2Utils()

        guard let targetBlockchain = utils.createBlockchain(for: request.chainId) else {
            log("Failed to create blockchain \(logSuffix)")
            await respond(with: .missingBlockchains([request.chainId.absoluteString]), session: nil, blockchainCurrencySymbol: nil)
            return
        }

        if userWalletRepository.models.isEmpty {
            log("User wallet repository is locked")
            await respond(with: .userWalletRepositoryIsLocked, session: nil, blockchainCurrencySymbol: targetBlockchain.currencySymbol)
            return
        }

        guard let session = await sessionsStorage.session(with: request.topic) else {
            log("Failed to find session in storage \(logSuffix)")
            await respond(with: .wrongCardSelected, session: nil, blockchainCurrencySymbol: targetBlockchain.currencySymbol)
            return
        }

        guard let userWallet = userWalletRepository.models.first(where: { $0.userWalletId.stringValue == session.userWalletId }) else {
            log("Failed to find target user wallet")
            await respond(with: .missingActiveUserWalletModel, session: session, blockchainCurrencySymbol: targetBlockchain.currencySymbol)
            return
        }

        if userWallet.isUserWalletLocked {
            log("Attempt to handle message with locked user wallet")
            await respond(with: .userWalletIsLocked, session: session, blockchainCurrencySymbol: targetBlockchain.currencySymbol)
            return
        }

        do {
            let result = try await wcHandlersService.handle(
                request,
                from: session.sessionInfo.dAppInfo,
                blockchainId: targetBlockchain.id,
                signer: userWallet.signer,
                walletModelProvider: CommonWalletConnectWalletModelProvider(walletModelsManager: userWallet.walletModelsManager) // Actuallty don't know where this generation should be...
            )

            log("Receive result from user \(result) for \(logSuffix)")
            try await WalletKit.instance.respond(topic: session.topic, requestId: request.id, response: result)

            logAnalytics(
                request: request,
                session: session,
                blockchainCurrencySymbol: targetBlockchain.currencySymbol,
                error: nil
            )

        } catch let error as WalletConnectV2Error {
            if case .unsupportedWCMethod = error {} else {
                displayErrorUI(error)
            }
            await respond(with: error, session: session, blockchainCurrencySymbol: targetBlockchain.currencySymbol)
        } catch {
            let wcError: WalletConnectV2Error = .unknown(error.localizedDescription)
            displayErrorUI(wcError)
            await respond(with: wcError, session: session, blockchainCurrencySymbol: targetBlockchain.currencySymbol)
        }
    }

    // MARK: - Utils

    private func logAnalytics(
        request: Request,
        session: WalletConnectSavedSession?,
        blockchainCurrencySymbol: String?,
        error: WalletConnectV2Error?
    ) {
        var params: [Analytics.ParameterKey: String] = [:]

        if let session {
            params[.dAppName] = session.sessionInfo.dAppInfo.name
            params[.dAppUrl] = session.sessionInfo.dAppInfo.url
        }

        if let blockchainCurrencySymbol {
            params[.blockchain] = blockchainCurrencySymbol
        }

        params[.methodName] = request.method

        if let error {
            params[.validation] = Analytics.ParameterValue.fail.rawValue
            params[.errorCode] = "\(error.code)"
            let errorDescription: String
            if case .unknown(let externalErrorMessage) = error {
                errorDescription = externalErrorMessage
            } else {
                errorDescription = error.errorDescription ?? "No error description"
            }
            params[.errorDescription] = errorDescription
        } else {
            params[.validation] = Analytics.ParameterValue.success.rawValue
            params[.errorCode] = "0"
        }

        Analytics.log(event: .requestHandled, params: params)
    }

    private func log<T>(_ message: @autoclosure () -> T) {
        AppLog.shared.debug("[WC 2.0] \(message())")
    }
}

public typealias WalletConnectV2URI = WalletConnectURI

private struct DApps {
    private let unsupportedList: [String] = [
        "dydx.exchange",
        "pro.apex.exchange",
        "services.dfx.swiss",
        "sandbox.game",
    ]

    func isSupported(_ dAppURL: String) -> Bool {
        for dApp in unsupportedList {
            if dAppURL.contains(dApp) {
                return false
            }
        }

        return true
    }
}
