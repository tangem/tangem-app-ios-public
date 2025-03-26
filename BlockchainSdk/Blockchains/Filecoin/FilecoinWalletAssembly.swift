//
//  FilecoinWalletAssembly.swift
//  BlockchainSdk
//
//

import Foundation

struct FilecoinWalletAssembly: WalletManagerAssembly {
    func make(with input: WalletManagerAssemblyInput) throws -> WalletManager {
        FilecoinWalletManager(
            wallet: input.wallet,
            networkService: FilecoinNetworkService(
                providers: APIResolver(blockchain: input.blockchain, config: input.blockchainSdkConfig)
                    .resolveProviders(apiInfos: input.apiInfo) { nodeInfo, _ in
                        FilecoinNetworkProvider(
                            node: nodeInfo,
                            configuration: input.networkConfig
                        )
                    }
            ),
            transactionBuilder: try FilecoinTransactionBuilder(publicKey: input.wallet.publicKey)
        )
    }
}
