//
//  MarketsChartModel.swift
//  Tangem
//
//

import Foundation

struct MarketsChartModel: Decodable {
    /// `[timestamp (in milliseconds): price]`
    let prices: [String: Decimal]
}
