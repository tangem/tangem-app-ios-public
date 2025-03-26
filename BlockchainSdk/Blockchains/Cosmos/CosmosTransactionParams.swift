//
//  CosmosTransactionParams.swift
//  BlockchainSdk
//
//

import Foundation

public struct CosmosTransactionParams: TransactionParams {
    let memo: String

    public init(memo: String) {
        self.memo = memo
    }
}
