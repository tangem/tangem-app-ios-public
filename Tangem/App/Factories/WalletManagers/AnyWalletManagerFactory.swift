//
//  AnyWalletManagerFactory.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk

protocol AnyWalletManagerFactory {
    func makeWalletManager(for token: StorageEntry, keys: [CardDTO.Wallet], apiList: APIList) throws -> WalletManager
}

enum AnyWalletManagerFactoryError: Error {
    case entryHasNotDerivationPath
    case noDerivation
    case walletWithBlockchainCurveNotFound
}
