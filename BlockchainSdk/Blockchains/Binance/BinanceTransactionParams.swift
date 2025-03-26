//
//  BinanceTransactionParams.swift
//  BlockchainSdk
//
//

import Foundation

public struct BinanceTransactionParams: TransactionParams {
    var memo: String?

    public init(memo: String? = nil) {
        self.memo = memo
    }
}
