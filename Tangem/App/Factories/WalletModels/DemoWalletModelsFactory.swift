//
//  DemoWalletModelsFactory.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk

struct DemoWalletModelsFactory {
    private let factory: CommonWalletModelsFactory

    init(config: UserWalletConfig) {
        factory = CommonWalletModelsFactory(config: config)
    }
}

extension DemoWalletModelsFactory: WalletModelsFactory {
    func makeWalletModels(from walletManager: WalletManager) -> [WalletModel] {
        return factory.makeWalletModels(from: walletManager)
    }

    func makeWalletModels(for types: [Amount.AmountType], walletManager: WalletManager) -> [WalletModel] {
        let models = factory.makeWalletModels(for: types, walletManager: walletManager)

        let demoUtil = DemoUtil()

        models.forEach {
            $0.demoBalance = demoUtil.getDemoBalance(for: $0.wallet.blockchain)
        }

        return models
    }
}
