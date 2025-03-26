//
//  TransactionHistoryFactoryProvider.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk

class TransactionHistoryFactoryProvider {
    @Injected(\.keysManager) private var keysManager: KeysManager
    @Injected(\.apiListProvider) private var apiListProvider: APIListProvider

    // It is safe to get provider list without validation that list is not empty, because this factory created
    // only after WalletManager creation, which can't created without API list
    lazy var factory: TransactionHistoryProviderFactory = .init(config: keysManager.blockchainConfig, apiList: apiListProvider.apiList)

    init() {}
}
