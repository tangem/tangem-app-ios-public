//
//  NEARAccountInfo.swift
//  BlockchainSdk
//
//

import Foundation

enum NEARAccountInfo {
    struct Account {
        let accountId: String
        let amount: Amount
        let recentBlockHash: String
        let storageUsageInBytes: Decimal
    }

    case notInitialized
    case initialized(Account)
}
