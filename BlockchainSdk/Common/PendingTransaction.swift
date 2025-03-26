//
//  PendingTransaction.swift
//  BlockchainSdk
//
//

import Foundation

struct PendingTransaction {
    let hash: String
    var destination: String
    let value: Decimal
    var source: String
    let fee: Decimal?
    let date: Date
    let isIncoming: Bool

    let transactionParams: TransactionParams?
}
