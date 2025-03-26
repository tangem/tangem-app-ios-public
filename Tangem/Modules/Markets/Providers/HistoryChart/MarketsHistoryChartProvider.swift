//
//  MarketsHistoryChartProvider.swift
//  Tangem
//
//

import Foundation

protocol MarketsHistoryChartProvider {
    func loadHistoryChart(for interval: MarketsPriceIntervalType) async throws -> LineChartViewData
    func setCurrencyCode(_ currencyCode: String)
}
