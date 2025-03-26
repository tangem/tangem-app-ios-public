//
//  CasperTransactionParams.swift
//  BlockchainSdk
//
//

import Foundation

public struct CasperTransactionParams: TransactionParams {
    let memo: UInt64

    public init(memo: UInt64) {
        self.memo = memo
    }
}
