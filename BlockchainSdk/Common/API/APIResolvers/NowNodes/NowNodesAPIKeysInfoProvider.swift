//
//  NowNodesAPIKeysInfoProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct NowNodesAPIKeysInfoProvider {
    let apiKey: String
    func apiKeys(for blockchain: Blockchain) -> APIHeaderKeyInfo? {
        switch blockchain {
        case .xrp, .tron, .algorand, .aptos, .solana:
            return .init(
                headerName: Constants.nowNodesApiKeyHeaderName,
                headerValue: apiKey
            )
        default: return nil
        }
    }
}
