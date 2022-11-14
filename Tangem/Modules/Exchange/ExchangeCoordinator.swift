//
//  ExchangeCoordinator.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 21.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import BlockchainSdk

class ExchangeCoordinator: CoordinatorObject {
    var dismissAction: Action
    var popToRootAction: ParamsAction<PopToRootOptions>

    @Published var exchangeViewModel: ExchangeViewModel? = nil

    required init(dismissAction: @escaping Action, popToRootAction: @escaping ParamsAction<PopToRootOptions>) {
        self.dismissAction = dismissAction
        self.popToRootAction = popToRootAction
    }

    func start(with options: ExchangeCoordinator.Options) {
        let exchangeViewModelFactory = ExchangeViewModelFactory()
        let walletModelAdapter = WalletModelAdapter(walletManager: options.walletManager)
        exchangeViewModel = exchangeViewModelFactory.createExchangeViewModel(exchangeManager: walletModelAdapter,
                                                                             signer: options.signer,
                                                                             sourceCurrency: options.sourceCurrency,
                                                                             coinModel: options.coinModel,
                                                                             exchangeRouter: .oneInch)
    }
}

extension ExchangeCoordinator {
    func openTokenList() { } // TODO: - IOS-2344

    func openApproveView() { } // TODO: - IOS-2344

    func openSuccessView() { } // TODO: - IOS-2344
}

extension ExchangeCoordinator {
    struct Options {
        let signer: TangemSigner
        let sourceCurrency: Currency
        let walletManager: WalletManager
        let coinModel: CoinModel
    }
}
