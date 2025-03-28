//
//  TwinWalletManagerFactory.swift
//  Tangem
//
//

import Foundation
import TangemSdk
import BlockchainSdk

struct TwinWalletManagerFactory {
    private let pairPublicKey: Data

    init(pairPublicKey: Data) {
        self.pairPublicKey = pairPublicKey
    }
}

extension TwinWalletManagerFactory: AnyWalletManagerFactory {
    func makeWalletManager(for token: StorageEntry, keys: [CardDTO.Wallet], apiList: APIList) throws -> WalletManager {
        guard let walletPublicKey = keys.first?.publicKey else {
            throw CommonError.noData
        }

        let factory = WalletManagerFactoryProvider(apiList: apiList).factory
        let twinManager = try factory.makeTwinWalletManager(
            walletPublicKey: walletPublicKey,
            pairKey: pairPublicKey,
            isTestnet: AppEnvironment.current.isTestnet
        )

        return twinManager
    }
}
