//
//  CasperNetworkResponse.Transaction.swift
//  BlockchainSdk
//
//

import Foundation

extension CasperNetworkResponse {
    /// The balance represented in motes.
    struct Transaction: Decodable {
        let deployHash: String
    }
}
