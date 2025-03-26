//
//  TronTransactionParams.swift
//  BlockchainSdk
//
//

import Foundation

struct TronTransactionParams: TransactionParams {
    let transactionType: TransactionType

    init(transactionType: TransactionType) {
        self.transactionType = transactionType
    }
}

extension TronTransactionParams {
    enum TransactionType {
        case transfer
        case approval(data: Data)
    }
}
