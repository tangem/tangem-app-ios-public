//
//  AnalyticsStorageKey.swift
//  Tangem
//
//

import Foundation

enum AnalyticsStorageKey: String {
    case hasPositiveBalance
    case scanSource
    case limitedEvents

    var isPermanent: Bool {
        switch self {
        case .hasPositiveBalance:
            return true
        case .scanSource, .limitedEvents:
            return false
        }
    }
}
