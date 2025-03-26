//
//  RosettaResponse.swift
//  BlockchainSdk
//
//

import Foundation

struct RosettaBalanceResponse: Codable {
    let balances: [RosettaAmount]?
}

struct RosettaSubmitResponse: Codable {
    let transactionIdentifier: RosettaTransactionIdentifier
}

struct RosettaCoinsResponse: Codable {
    let coins: [RosettaCoin]?
}
