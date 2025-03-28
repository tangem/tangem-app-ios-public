//
//  KusumaWalletAssembly.swift
//  BlockchainSdk
//
//

import Foundation
import TangemSdk

struct SubstrateWalletAssembly: WalletManagerAssembly {
    func make(with input: WalletManagerAssemblyInput) throws -> WalletManager {
        let blockchain = input.blockchain

        guard let network = PolkadotNetwork(blockchain: blockchain) else {
            throw WalletError.empty
        }

        return PolkadotWalletManager(network: network, wallet: input.wallet).then { walletManager in
            let runtimeVersionProvider = SubstrateRuntimeVersionProvider(network: network)
            let networkConfig = input.networkConfig
            let providers: [PolkadotJsonRpcProvider] = APIResolver(blockchain: blockchain, config: input.blockchainSdkConfig)
                .resolveProviders(apiInfos: input.apiInfo) { nodeInfo, _ in
                    PolkadotJsonRpcProvider(node: nodeInfo, configuration: networkConfig)
                }

            walletManager.networkService = PolkadotNetworkService(providers: providers, network: network)
            walletManager.txBuilder = PolkadotTransactionBuilder(
                blockchain: blockchain,
                walletPublicKey: input.wallet.publicKey.blockchainKey,
                network: network,
                runtimeVersionProvider: runtimeVersionProvider
            )
        }
    }
}
