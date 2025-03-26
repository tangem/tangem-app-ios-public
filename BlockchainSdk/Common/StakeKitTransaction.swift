//
//  StakeKitTransaction.swift
//  BlockchainSdk
//
//

import Foundation

public struct StakeKitTransaction: Hashable {
    public let id: String
    let amount: Amount
    let fee: Fee
    let unsignedData: String
    let params: StakeKitTransactionParams?

    public init(
        id: String,
        amount: Amount,
        fee: Fee,
        unsignedData: String,
        params: StakeKitTransactionParams? = nil
    ) {
        self.id = id
        self.amount = amount
        self.fee = fee
        self.unsignedData = unsignedData
        self.params = params
    }
}

public struct StakeKitTransactionSendResult: Hashable {
    public let transaction: StakeKitTransaction
    public let result: TransactionSendResult
}

public struct StakeKitTransactionSendError: Error {
    public let transaction: StakeKitTransaction
    public let error: Error
}

public struct StakeKitTransactionParams: Hashable, TransactionParams {
    let validator: String?

    public init(validator: String? = nil) {
        self.validator = validator
    }
}
