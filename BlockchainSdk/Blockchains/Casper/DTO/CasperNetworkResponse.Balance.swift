//
//  CasperNetworkResult.BalanceInfo.swift
//  BlockchainSdk
//
//

import Foundation

// https://docs.casper.network/developers/json-rpc/json-rpc-informational/#query_balance
extension CasperNetworkResponse {
    /// The balance represented in motes.
    struct Balance: Decodable {
        let apiVersion: String
        let balance: String
    }
}
