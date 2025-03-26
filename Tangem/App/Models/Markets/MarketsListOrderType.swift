//
//  MarketsListOrderType.swift
//  Tangem
//
//

import Foundation

enum MarketsListOrderType: String, CaseIterable, Encodable, CustomStringConvertible, Identifiable {
    case rating
    case trending
    case buyers
    case gainers
    case losers

    var id: String {
        rawValue
    }

    var description: String {
        switch self {
        case .rating: return Localization.marketsSortByRatingTitle
        case .trending: return Localization.marketsSortByTrendingTitle
        case .buyers: return Localization.marketsSortByExperiencedBuyersTitle
        case .gainers: return Localization.marketsSortByTopGainersTitle
        case .losers: return Localization.marketsSortByTopLosersTitle
        }
    }
}
