//
//  ExpressAnalyticsLogger.swift
//  Tangem
//
//

import Foundation
import TangemExpress

struct CommonExpressAnalyticsLogger: ExpressAnalyticsLogger {
    func bestProviderSelected(_ provider: ExpressAvailableProvider) {
        guard provider.provider.id.lowercased() == "changelly",
              provider.provider.recommended == true else {
            return
        }

        Analytics.log(
            .promoChangellyActivity,
            params: [.state: provider.isBest ? .native : .recommended]
        )
    }
}
