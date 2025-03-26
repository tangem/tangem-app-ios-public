//
//  BitcoinTransactionParams.swift
//  BlockchainSdk
//
//

import Foundation

struct BitcoinTransactionParams: TransactionParams {
    let inputs: [BitcoinInput]
}

struct BitcoinInput {
    let sequence: Int
    let address: String
    let outputIndex: Int
    let outputValue: UInt64
    let prevHash: String
}
