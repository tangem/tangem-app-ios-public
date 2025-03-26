//
//  WalletModelsFactory.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk

protocol WalletModelsFactory {
    func makeWalletModels(from walletManager: WalletManager) -> [WalletModel]
    func makeWalletModels(for types: [Amount.AmountType], walletManager: WalletManager) -> [WalletModel]
}
