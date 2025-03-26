//
//  PendingExpressTransaction.swift
//  Tangem
//
//

import Foundation

struct PendingExpressTransaction: Equatable {
    let transactionRecord: ExpressPendingTransactionRecord
    let statuses: [PendingExpressTransactionStatus]
}
