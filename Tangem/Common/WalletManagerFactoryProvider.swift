//
//  WalletManagerFactoryProvider.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk

class WalletManagerFactoryProvider {
    @Injected(\.keysManager) private var keysManager: KeysManager

    let apiList: APIList

    lazy var factory: WalletManagerFactory = .init(
        config: keysManager.blockchainConfig,
        dependencies: BlockchainSdkDependencies(
            accountCreator: BlockchainAccountCreator(),
            dataStorage: UserDefaultsBlockchainDataStorage(suiteName: AppEnvironment.current.blockchainDataStorageSuiteName)
        ),
        apiList: apiList
    )

    init(apiList: APIList) {
        self.apiList = apiList
    }
}
