//
//  TONAPIResolver.swift
//  BlockchainSdk
//
//

import Foundation

struct TONAPIResolver {
    let config: BlockchainSdkConfig

    func resolve(blockchain: Blockchain) -> NodeInfo? {
        guard case .ton = blockchain else {
            return nil
        }

        return .init(
            url: URL(string: "https://toncenter.com/api/v2")!,
            keyInfo: APIKeysInfoProvider(blockchain: blockchain, config: config).apiKeys(for: .ton)
        )
    }
}
