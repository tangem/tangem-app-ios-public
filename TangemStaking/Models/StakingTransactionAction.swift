//
//  StakingTransactionAction.swift
//  TangemStaking
//
//

import Foundation

public struct StakingTransactionAction: Hashable {
    public let id: String?
    public let amount: Decimal
    public let validator: String?
    public let transactions: [StakingTransactionInfo]

    public init(id: String? = nil, amount: Decimal, validator: String? = nil, transactions: [StakingTransactionInfo]) {
        self.id = id
        self.amount = amount
        self.transactions = transactions
        self.validator = validator
    }
}
