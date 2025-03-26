//
//  HederaNetworkResult.AccountTokensBalance.swift
//  BlockchainSdk
//
//

import Foundation

extension HederaNetworkResult {
    /// Contains token balances for the account; used by the REST network layer.
    struct AccountTokensBalance: Decodable {
        struct Token: Decodable {
            /// Contract address - network entity ID in the format of `shard.realm.num`.
            let tokenId: String
            /// - Note: For FUNGIBLE_COMMON, the balance that the account holds in the smallest denomination.
            /// For NON_FUNGIBLE_UNIQUE, the number of NFTs held by the account.
            let balance: Int
            let decimals: Int
        }

        let tokens: [Token]
    }
}
