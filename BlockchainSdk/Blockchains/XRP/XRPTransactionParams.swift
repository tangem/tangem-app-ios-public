//
//  XRPTransactionParams.swift
//  BlockchainSdk
//
//

import Foundation

public struct XRPTransactionParams: TransactionParams {
    var destinationTag: UInt32?

    public init(destinationTag: UInt32? = nil) {
        self.destinationTag = destinationTag
    }
}
