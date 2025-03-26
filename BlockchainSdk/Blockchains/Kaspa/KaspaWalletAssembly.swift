//
//  KaspaWalletAssembly.swift
//  BlockchainSdk
//
//

import Foundation
import TangemSdk

struct KaspaWalletAssembly: WalletManagerAssembly {
    func make(with input: WalletManagerAssemblyInput) throws -> WalletManager {
        KaspaWalletManager(wallet: input.wallet).then { walletManager in
            let blockchain = input.blockchain

            walletManager.txBuilder = KaspaTransactionBuilder(blockchain: blockchain)

            let providers = APIResolver(blockchain: blockchain, config: input.blockchainSdkConfig)
                .resolveProviders(apiInfos: input.apiInfo) { nodeInfo, _ in
                    KaspaNetworkProvider(
                        url: nodeInfo.url,
                        networkConfiguration: input.networkConfig
                    )
                }

            walletManager.networkService = KaspaNetworkService(providers: providers, blockchain: blockchain)
        }
    }
}
