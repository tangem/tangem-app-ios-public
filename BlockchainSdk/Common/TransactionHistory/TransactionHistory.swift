//
//  TransactionHistory.swift
//  BlockchainSdk
//
//

import Foundation

public enum TransactionHistory {}

public extension TransactionHistory {
    struct Request: Hashable {
        public let address: String
        public let amountType: Amount.AmountType
        public let limit: Int

        public init(address: String, amountType: Amount.AmountType, limit: Int = 20) {
            self.address = address
            self.amountType = amountType
            self.limit = limit
        }
    }
}

public extension TransactionHistory {
    struct Response: Hashable {
        public let records: [TransactionRecord]

        public init(records: [TransactionRecord]) {
            self.records = records
        }
    }
}
