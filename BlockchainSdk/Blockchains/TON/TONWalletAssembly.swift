//
//  TONWalletAssembly.swift
//  BlockchainSdk
//
//

import Foundation
import TangemSdk
import BitcoinCore

struct TONWalletAssembly: WalletManagerAssembly {
    func make(with input: WalletManagerAssemblyInput) throws -> WalletManager {
        let blockchain = input.blockchain
        let config = input.blockchainSdkConfig

        let providers: [TONProvider] = APIResolver(blockchain: blockchain, config: config)
            .resolveProviders(apiInfos: input.apiInfo) { nodeInfo, _ in
                TONProvider(node: nodeInfo, networkConfig: input.networkConfig)
            }

        return try TONWalletManager(
            wallet: input.wallet,
            networkService: .init(
                providers: providers,
                blockchain: input.blockchain
            )
        )
    }
}
