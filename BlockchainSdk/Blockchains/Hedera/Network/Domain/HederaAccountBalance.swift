//
//  HederaAccountBalance.swift
//  BlockchainSdk
//
//

import Foundation

struct HederaAccountBalance {
    struct TokenBalance {
        let contractAddress: String
        /// In atomic units.
        let balance: Int
        let decimalCount: Int
    }

    /// In atomic units (i.e. Tinybars).
    let hbarBalance: Int
    let tokenBalances: [TokenBalance]
}
