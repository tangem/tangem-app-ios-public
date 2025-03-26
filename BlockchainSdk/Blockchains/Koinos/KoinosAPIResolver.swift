//
//  KoinosAPIResolver.swift
//  BlockchainSdk
//
//

import Foundation

struct KoinosAPIResolver {
    let config: BlockchainSdkConfig

    func resolve(blockchain: Blockchain) -> NodeInfo? {
        guard case .koinos = blockchain else {
            return nil
        }

        return .init(
            url: URL(string: "https://api.koinos.pro/jsonrpc")!,
            keyInfo: APIKeysInfoProvider(blockchain: blockchain, config: config).apiKeys(for: .koinos)
        )
    }
}
