//
//  PendingExpressTransactionAnalyticsTracker.swift
//  Tangem
//
//

import Foundation

protocol PendingExpressTransactionAnalyticsTracker {
    func trackStatusForTransaction(
        with transactionId: String,
        tokenSymbol: String,
        status: PendingExpressTransactionStatus,
        provider: ExpressPendingTransactionRecord.Provider
    )
}

private struct PendingExpressTransactionAnalyticsTrackerKey: InjectionKey {
    static var currentValue: PendingExpressTransactionAnalyticsTracker = CommonPendingExpressTransactionAnalyticsTracker()
}

extension InjectedValues {
    var pendingExpressTransactionAnalayticsTracker: PendingExpressTransactionAnalyticsTracker {
        get { Self[PendingExpressTransactionAnalyticsTrackerKey.self] }
        set { Self[PendingExpressTransactionAnalyticsTrackerKey.self] = newValue }
    }
}
