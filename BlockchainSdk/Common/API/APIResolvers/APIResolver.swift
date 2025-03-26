//
//  APIResolver.swift
//  BlockchainSdk
//
//

import Foundation

struct APIResolver {
    let blockchain: Blockchain
    let config: BlockchainSdkConfig

    func resolveProviders<T>(apiInfos: [NetworkProviderType], factory: (NodeInfo, NetworkProviderType?) -> T?) -> [T] {
        if blockchain.isTestnet {
            return TestnetAPINodeInfoProvider(blockchain: blockchain, config: config).urls()?.compactMap {
                factory($0, nil)
            } ?? []
        }

        let resolver = APINodeInfoResolver(blockchain: blockchain, config: config)
        return apiInfos.compactMap {
            guard let nodeInfo = resolver.resolve(for: $0) else {
                return nil
            }

            return factory(nodeInfo, $0)
        }
    }
}
