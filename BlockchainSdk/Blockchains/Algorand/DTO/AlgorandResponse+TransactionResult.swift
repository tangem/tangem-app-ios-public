//
//  AlgorandResponse+TransactionResult.swift
//  BlockchainSdk
//
//

import Foundation

extension AlgorandResponse {
    /// https://developer.algorand.org/docs/rest-apis/algod/#post-v2transactions
    struct TransactionResult: Decodable {
        let txId: String
    }
}
