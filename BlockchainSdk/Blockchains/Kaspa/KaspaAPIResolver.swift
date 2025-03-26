//
//  KaspaAPIResolver.swift
//  BlockchainSdk
//
//

import Foundation

struct KaspaAPIResolver {
    let config: BlockchainSdkConfig

    func resolve(blockchain: Blockchain) -> NodeInfo? {
        guard
            case .kaspa = blockchain,
            let link = config.kaspaSecondaryApiUrl,
            let url = URL(string: link)
        else {
            return nil
        }

        return .init(url: url)
    }
}
