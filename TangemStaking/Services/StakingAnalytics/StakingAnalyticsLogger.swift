//
//  StakingAnalyticsLogger.swift
//  TangemStaking
//
//

import Foundation

public protocol StakingAnalyticsLogger {
    func logError(_ error: any Error, currencySymbol: String)
}
