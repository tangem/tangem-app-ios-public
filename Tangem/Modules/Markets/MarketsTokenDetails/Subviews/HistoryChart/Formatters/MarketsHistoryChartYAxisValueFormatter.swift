//
//  MarketsHistoryChartYAxisValueFormatter.swift
//  Tangem
//
//

import Foundation
import DGCharts

final class MarketsHistoryChartYAxisValueFormatter {
    private let priceFormatter = MarketsTokenPriceFormatter()
}

// MARK: - AxisValueFormatter protocol conformance

extension MarketsHistoryChartYAxisValueFormatter: AxisValueFormatter {
    func stringForValue(_ value: Double, axis: DGCharts.AxisBase?) -> String {
        // We're losing some precision here due to the `Double` -> `Decimal` conversion,
        // but that's ok - graphical charts are never 100% accurate by design
        return priceFormatter.formatPrice(Decimal(value))
    }
}
