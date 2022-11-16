//
//  ExchangeCoordinator.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 21.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import BlockchainSdk
import TangemExchange

class ExchangeCoordinator: CoordinatorObject {
    var dismissAction: Action
    var popToRootAction: ParamsAction<PopToRootOptions>

    @Published var exchangeViewModel: ExchangeViewModel? = nil

    required init(dismissAction: @escaping Action, popToRootAction: @escaping ParamsAction<PopToRootOptions>) {
        self.dismissAction = dismissAction
        self.popToRootAction = popToRootAction
    }

    func start(with options: ExchangeCoordinator.Options) {
        let manager = TangemExchangeFactory.createExchangeManager(
            source: options.sourceCurrency,
            destination: nil,
            blockchainProvider: options.blockchainProvider
        )
        exchangeViewModel = ExchangeViewModel(router: self, exchangeManager: manager)
    }
}

// MARK: - Options

extension ExchangeCoordinator {
    struct Options {
        let signer: TangemSigner
        let sourceCurrency: Currency
        let blockchainProvider: BlockchainNetworkProvider
    }
}

// MARK: - ExchangeRoutable

extension ExchangeCoordinator: ExchangeRoutable {
    func openTokenList() { } // TODO: - IOS-2344

    func openApproveView() { } // TODO: - IOS-2344

    func openSuccessView() { } // TODO: - IOS-2344
}
