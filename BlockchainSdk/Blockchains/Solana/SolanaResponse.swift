//
//  SolanaResponse.swift
//  BlockchainSdk
//
//

import Foundation
import SolanaSwift

struct SolanaAccountInfoResponse {
    let balance: Decimal
    let accountExists: Bool
    let tokensByMint: [String: SolanaTokenAccountInfoResponse]
    let confirmedTransactionIDs: [String]
    let mainAccountRentExemption: Decimal
}

struct SolanaMainAccountInfoResponse {
    let balance: Lamports
    let accountExists: Bool
    let rentExemption: Decimal
}

struct SolanaTokenAccountInfoResponse {
    let address: String
    let mint: String
    let balance: Decimal
    let space: UInt64?
}
