//
//  HederaExchangeRate.swift
//  BlockchainSdk
//
//

import Foundation

/// The amount of HBAR per 1 USD ('reverse' exchange rate) for the current and next blocks, respectively.
struct HederaExchangeRate {
    let currentHBARPerUSD: Decimal
    let nextHBARPerUSD: Decimal
}
