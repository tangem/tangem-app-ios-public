//
//  AlgorandTransactionInfo.swift
//  BlockchainSdk
//
//

import Foundation

struct AlgorandTransactionInfo {
    let transactionHash: String?
    let status: Status
}

extension AlgorandTransactionInfo {
    enum Status: String {
        case committed
        case still
        case removed
    }
}
