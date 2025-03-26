//
//  TransactionCreator.swift
//  BlockchainSdk
//
//

import Foundation

public protocol TransactionCreator: TransactionValidator {
    func createTransaction(
        amount: Amount,
        fee: Fee,
        sourceAddress: String?,
        destinationAddress: String,
        changeAddress: String?,
        contractAddress: String?
    ) throws -> Transaction

    func createTransaction(
        amount: Amount,
        fee: Fee,
        sourceAddress: String?,
        destinationAddress: String,
        changeAddress: String?,
        contractAddress: String?
    ) async throws -> Transaction
}

// MARK: - Default

public extension TransactionCreator {
    func createTransaction(
        amount: Amount,
        fee: Fee,
        sourceAddress: String? = nil,
        destinationAddress: String,
        changeAddress: String? = nil,
        contractAddress: String? = nil
    ) throws -> Transaction {
        try validate(amount: amount, fee: fee)

        return Transaction(
            amount: amount,
            fee: fee,
            sourceAddress: sourceAddress ?? defaultSourceAddress,
            destinationAddress: destinationAddress,
            changeAddress: changeAddress ?? defaultChangeAddress,
            contractAddress: contractAddress ?? amount.type.token?.contractAddress
        )
    }

    func createTransaction(
        amount: Amount,
        fee: Fee,
        sourceAddress: String? = nil,
        destinationAddress: String,
        changeAddress: String? = nil,
        contractAddress: String? = nil
    ) async throws -> Transaction {
        let transaction = Transaction(
            amount: amount,
            fee: fee,
            sourceAddress: defaultSourceAddress,
            destinationAddress: destinationAddress,
            changeAddress: changeAddress ?? defaultChangeAddress,
            contractAddress: contractAddress ?? amount.type.token?.contractAddress
        )

        try await validate(transaction: transaction)

        return transaction
    }
}
