//
//  TransactionHistoryMapper.swift
//  BlockchainSdk
//
//

import Foundation

protocol TransactionHistoryMapper {
    associatedtype Response

    func mapToTransactionRecords(
        _ response: Response,
        walletAddress: String,
        amountType: Amount.AmountType
    ) throws -> [TransactionRecord]

    func reset()
}

// MARK: - Default implementation

extension TransactionHistoryMapper {
    func reset() {}
}
