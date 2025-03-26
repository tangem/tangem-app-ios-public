//
//  FeePaidCurrency.swift
//  BlockchainSdk
//
//

import Foundation

/// The currency that is used to pay the transaction fees.
public enum FeePaidCurrency {
    /// Fees are paid in the network's main currency.
    case coin
    /// Fees are paid in the specific token of this network.
    case token(value: Token)
    /// Fees are paid in the same currency in which the transaction was made.
    case sameCurrency

    case feeResource(type: FeeResourceType)
}
