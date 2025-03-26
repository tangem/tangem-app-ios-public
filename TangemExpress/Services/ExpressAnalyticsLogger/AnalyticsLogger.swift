//
//  ExpressAnalyticsLogger.swift
//  TangemExpress
//
//

import Foundation

public protocol ExpressAnalyticsLogger {
    func bestProviderSelected(_ provider: ExpressAvailableProvider)
}
