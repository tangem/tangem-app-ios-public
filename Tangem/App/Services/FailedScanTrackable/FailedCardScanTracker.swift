//
//  ScanCardObserver.swift
//  Tangem
//
//

import Foundation

class FailedCardScanTracker: EmailDataCollector, FailedScanTrackable {
    var logData: Data? {
        ("----------\n" + DeviceInfoProvider.info()).data(using: .utf8)
    }

    var shouldDisplayAlert: Bool {
        numberOfFailedAttempts >= 2
    }

    private(set) var numberOfFailedAttempts: Int = 0

    func resetCounter() {
        numberOfFailedAttempts = 0
    }

    func recordFailure() {
        numberOfFailedAttempts += 1
    }
}
