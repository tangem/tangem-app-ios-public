//
//  MarketsTokenModel.swift
//  Tangem
//
//

import Foundation

struct MarketsTokenModel: Identifiable, Decodable, Equatable {
    let id: String
    let name: String
    let symbol: String
    let currentPrice: Decimal?
    let priceChangePercentage: [String: Decimal]
    let marketRating: Int?
    let marketCap: Decimal?
    let isUnderMarketCapLimit: Bool?
}
