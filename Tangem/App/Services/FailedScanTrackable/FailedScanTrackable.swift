//
//  FailedScanTrackable.swift
//  Tangem
//
//

import Foundation

protocol FailedScanTrackable: EmailDataCollector {
    var numberOfFailedAttempts: Int { get }
    var shouldDisplayAlert: Bool { get }

    func resetCounter()
    func recordFailure()
}

private struct FailedScanTrackableKey: InjectionKey {
    static var currentValue: FailedScanTrackable = FailedCardScanTracker()
}

extension InjectedValues {
    var failedScanTracker: FailedScanTrackable {
        get { Self[FailedScanTrackableKey.self] }
        set { Self[FailedScanTrackableKey.self] = newValue }
    }
}
