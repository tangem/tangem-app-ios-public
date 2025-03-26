//
//  AdaliteResponse.swift
//  BlockchainSdk
//
//

import Foundation

struct AdaliteUnspentOutput {
    let id: String
    let index: Int
}

struct AdaliteBalanceResponse {
    let transactions: [String]
}
