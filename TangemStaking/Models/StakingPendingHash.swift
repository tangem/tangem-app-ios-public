//
//  StakingPendingHash.swift
//  TangemStaking
//
//

import Foundation

public struct StakingPendingHash {
    public let transactionId: String
    public let hash: String

    public init(transactionId: String, hash: String) {
        self.transactionId = transactionId
        self.hash = hash
    }
}
