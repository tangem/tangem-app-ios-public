//
//  HederaNetworkResult.AccountBalance.swift
//  BlockchainSdk
//
//

import Foundation

extension HederaNetworkResult {
    /// Contains both HBAR and token balances for the account; used by the Consensus network layer.
    struct AccountBalance {
        typealias HBARBalance = AccountHbarBalance
        typealias TokensBalance = AccountTokensBalance

        let hbarBalance: HBARBalance
        let tokensBalance: TokensBalance
    }
}
