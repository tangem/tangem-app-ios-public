//
//  TotalBalance.swift
//  Tangem
//
//

import Foundation

struct TotalBalance {
    let balance: Decimal?
    let currencyCode: String
    let hasError: Bool
    /// Indicates if total balance contains sum of balances of all tokens except for custom tokens (tokens without id)
    /// If at least balance or fiat rate of one token is not loaded this field should be equal to `false`.
    let allTokensBalancesIncluded: Bool
}
