//
//  HederaNetworkResult.TransactionsInfo.swift
//  BlockchainSdk
//
//

import Foundation

extension HederaNetworkResult {
    /// Used by the Mirror network layer.
    struct TransactionsInfo: Decodable {
        struct Transaction: Decodable {
            let result: String
            let transactionId: String
        }

        let transactions: [Transaction]
    }
}
