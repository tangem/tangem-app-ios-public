//
//  TONWalletINfo.swift
//  BlockchainSdk
//
//

import Foundation

/// Union for use logic info TON wallet
struct TONWalletInfo {
    /// Wallet balance
    let balance: Decimal

    /// Sequence number last transaction
    let sequenceNumber: Int

    /// Wallet availability
    let isAvailable: Bool

    let tokensInfo: [Token: TokenInfo]

    struct TokenInfo {
        let jettonWalletAddress: String
        let balance: Decimal
    }
}
