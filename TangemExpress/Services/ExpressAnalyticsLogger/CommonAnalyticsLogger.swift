//
//  CommonExpressAnalyticsLogger.swift
//  TangemExpress
//
//

import Foundation

struct CommonExpressAnalyticsLogger: ExpressAnalyticsLogger {
    func bestProviderSelected(_ provider: ExpressAvailableProvider) {
        print("Best provider selected: \(provider.provider.name)")
    }
}
