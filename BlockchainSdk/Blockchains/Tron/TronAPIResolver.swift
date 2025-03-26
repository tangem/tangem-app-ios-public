//
//  TronAPIResolver.swift
//  BlockchainSdk
//
//

import Foundation

struct TronAPIResolver {
    let config: BlockchainSdkConfig

    func resolve(blockchain: Blockchain) -> NodeInfo? {
        guard case .tron = blockchain else {
            return nil
        }

        return .init(
            url: URL(string: "https://api.trongrid.io")!,
            keyInfo: APIKeysInfoProvider(blockchain: blockchain, config: config).apiKeys(for: .tron)
        )
    }
}
