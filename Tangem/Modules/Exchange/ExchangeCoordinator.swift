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
    let exchangeViewModelFactory: ExchangeViewModelFactory

    var dismissAction: Action
    var popToRootAction: ParamsAction<PopToRootOptions>

    @Published var exchangeViewModel: ExchangeViewModel? = nil

    required init(dismissAction: @escaping Action, popToRootAction: @escaping ParamsAction<PopToRootOptions>) {
        exchangeViewModelFactory = ExchangeViewModelFactory()
        self.dismissAction = dismissAction
        self.popToRootAction = popToRootAction
    }

    func start(with options: ExchangeCoordinator.Options) {
        let walletModelAdapter = WalletModelAdapter(walletModel: options.walletModel)
        exchangeViewModel = exchangeViewModelFactory.createExchangeViewModel(exchangeManager: walletModelAdapter,
                                                                             amountType: options.amount,
                                                                             signer: options.signer,
                                                                             blockchainNetwork: options.walletModel.blockchainNetwork,
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
        let walletModel: WalletModel
        let amount: Amount.AmountType
    }
}
