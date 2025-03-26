//
//  TokenQuote.swift
//  Tangem
//
//

import Foundation

struct TokenQuote: Hashable {
    let currencyId: String
    let price: Decimal
    let priceChange24h: Decimal?
    let priceChange7d: Decimal?
    let priceChange30d: Decimal?
    let currencyCode: String
}
