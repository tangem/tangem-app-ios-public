//
//  VeChainFeeParams.swift
//  BlockchainSdk
//
//

import Foundation

struct VeChainFeeParams: FeeParameters {
    enum TransactionPriority: CaseIterable {
        case low
        case medium
        case high
    }

    let priority: TransactionPriority
    let vmGas: Int
}
