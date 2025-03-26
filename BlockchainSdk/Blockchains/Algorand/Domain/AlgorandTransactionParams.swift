//
//  AlgorandTransactionParams.swift
//  BlockchainSdk
//
//

import Foundation

/// This model describe parameters from external application
public struct AlgorandTransactionParams: TransactionParams {
    let nonce: String

    public init(nonce: String) {
        self.nonce = nonce
    }
}
