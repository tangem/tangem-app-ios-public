//
//  AnalyticsContextDataProvider.swift
//  Tangem
//
//

import Foundation

protocol AnalyticsContextDataProvider: AnyObject {
    func getAnalyticsContextData() -> AnalyticsContextData?
}
