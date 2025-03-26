//
//  ValidationErrorContext.swift
//  Tangem
//
//

import Foundation

/// Carries additional information for a failed validation of the transaction.
struct ValidationErrorContext: Hashable {
    /// `true` when the transaction is denominated in the same currency as the fee currency for the blockchain, `false` otherwise.
    let isFeeCurrency: Bool
    let feeValue: Decimal
}
