//
//  AptosResponse.swift
//  BlockchainSdk
//
//

import Foundation

enum AptosResponse {}

extension AptosResponse {
    struct AccountResource: Decodable {
        let type: String
        let data: Resource
    }

    struct Resource: Decodable {
        let sequenceNumber: String?
        let coin: Coin?
    }
}

/// https://aptos.dev/concepts/resources#resources-vs-instances
extension AptosResponse {
    struct Coin: Decodable {
        let value: String
    }
}

extension AptosResponse {
    struct Fee: Decodable {
        let gasEstimate: UInt64
    }
}

extension AptosResponse {
    struct SimulateTransactionBody: Decodable {
        let gasUsed: String
    }

    struct SubmitTransactionBody: Decodable {
        let hash: String?
    }
}
