//
//  ServicesManager.swift
//  Tangem
//
//

import Foundation
import Combine
import Firebase
import BlockchainSdk
import TangemStaking

class ServicesManager {
    @Injected(\.exchangeService) private var exchangeService: ExchangeService
    @Injected(\.tangemApiService) private var tangemApiService: TangemApiService
    @Injected(\.userWalletRepository) private var userWalletRepository: UserWalletRepository
    @Injected(\.accountHealthChecker) private var accountHealthChecker: AccountHealthChecker
    @Injected(\.apiListProvider) private var apiListProvider: APIListProvider
    @Injected(\.pushNotificationsInteractor) private var pushNotificationsInteractor: PushNotificationsInteractor

    private var stakingPendingHashesSender: StakingPendingHashesSender?

    private var bag = Set<AnyCancellable>()

    init() {
        stakingPendingHashesSender = StakingDependenciesFactory().makePendingHashesSender()
    }

    func initialize() {
        AppLog.shared.configure()

        let initialLaunches = AppSettings.shared.numberOfLaunches
        let currentLaunches = initialLaunches + 1
        AppSettings.shared.numberOfLaunches = currentLaunches

        AppLog.shared.logAppLaunch(currentLaunches)

        if initialLaunches == 0 {
            userWalletRepository.initialClean()
        }

        AppLog.shared.debug("Start services initializing")

        if !AppEnvironment.current.isDebug {
            configureFirebase()
        }

        configureBlockchainSdkExceptionHandler()

        exchangeService.initialize()
        tangemApiService.initialize()
        accountHealthChecker.initialize()
        apiListProvider.initialize()
        pushNotificationsInteractor.initialize()
        SendFeatureProvider.shared.loadFeaturesAvailability()
        stakingPendingHashesSender?.sendHashesIfNeeded()
    }

    private func configureFirebase() {
        let plistName = "GoogleService-Info-\(AppEnvironment.current.rawValue.capitalizingFirstLetter())"

        guard let filePath = Bundle.main.path(forResource: plistName, ofType: "plist"),
              let options = FirebaseOptions(contentsOfFile: filePath) else {
            assertionFailure("GoogleService-Info.plist not found")
            return
        }

        FirebaseApp.configure(options: options)
    }

    private func configureBlockchainSdkExceptionHandler() {
        ExceptionHandler.shared.append(output: Analytics.BlockchainExceptionHandler())
    }
}

protocol Initializable {
    func initialize()
}
