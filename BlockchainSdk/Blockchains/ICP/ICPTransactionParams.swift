//
//  ICPTransactionParams.swift
//  BlockchainSdk
//
//

import Foundation

public struct ICPTransactionParams: TransactionParams {
    var memo: UInt64

    public init(memo: UInt64) {
        self.memo = memo
    }
}
