//
//  AlgorandRequest+Transaction.swift
//  BlockchainSdk
//
//

import Foundation

extension AlgorandRequest {
    /// https://developer.algorand.org/docs/rest-apis/algod/#get-v2transactionsparams
    struct TransactionParams: Decodable {
        let genesisId: String
        let genesisHash: String
        let fee: UInt64
        let lastRound: UInt64
        let nonce: String?
    }
}
