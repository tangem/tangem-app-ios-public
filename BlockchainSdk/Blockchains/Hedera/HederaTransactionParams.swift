//
//  HederaTransactionParams.swift
//  BlockchainSdk
//
//

import Foundation

public struct HederaTransactionParams: TransactionParams {
    let memo: String

    public init(memo: String) {
        self.memo = memo
    }
}
