//
//  HederaNetworkResult.ExchangeRate.swift
//  BlockchainSdk
//
//

import Foundation

extension HederaNetworkResult {
    struct ExchangeRate: Decodable {
        struct Rate: Decodable {
            var centEquivalent: Int
            var hbarEquivalent: Int
            var expirationTime: Int
        }

        let currentRate: Rate
        let nextRate: Rate
        let timestamp: String
    }
}
