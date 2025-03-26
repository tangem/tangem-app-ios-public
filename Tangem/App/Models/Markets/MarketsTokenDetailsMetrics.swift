//
//  MarketsTokenDetailsMetrics.swift
//  Tangem
//
//

import Foundation

struct MarketsTokenDetailsMetrics: Codable, Equatable {
    let marketRating: Int?
    let circulatingSupply: Decimal?
    let marketCap: Decimal?
    let volume24H: Decimal?
    let totalSupply: Decimal?
    let maxSupply: Decimal?
    let fullyDilutedValuation: Decimal?
}
