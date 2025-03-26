//
//  TronTransactionDataBuilder.swift
//  BlockchainSdk
//
//

import Foundation

protocol TronTransactionDataBuilder {
    func buildForApprove(spender: String, amount: Amount) throws -> Data
}
