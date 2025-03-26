//
//  AlgorandWalletAssembly.swift
//  BlockchainSdk
//
//

import Foundation
import TangemSdk

struct AlgorandWalletAssembly: WalletManagerAssembly {
    func make(with input: WalletManagerAssemblyInput) throws -> WalletManager {
        var providers: [AlgorandNetworkProvider] = []

        let blockchain = input.blockchain
        let config = input.blockchainSdkConfig
        let networkConfig = input.networkConfig

        let apiResolver = APIResolver(blockchain: blockchain, config: config)
        providers = apiResolver.resolveProviders(apiInfos: input.apiInfo, factory: { nodeInfo, apiInfo in
            AlgorandNetworkProvider(
                node: nodeInfo,
                networkConfig: networkConfig
            )
        })

        let transactionBuilder = AlgorandTransactionBuilder(
            publicKey: input.wallet.publicKey.blockchainKey,
            curve: input.wallet.blockchain.curve,
            isTestnet: input.blockchain.isTestnet
        )

        return try AlgorandWalletManager(
            wallet: input.wallet,
            transactionBuilder: transactionBuilder,
            networkService: .init(blockchain: input.wallet.blockchain, providers: providers)
        )
    }
}
