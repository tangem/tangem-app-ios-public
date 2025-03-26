//
//  Analytics+DebugEvent.swift
//  Tangem
//
//

import Foundation

protocol AnalyticsDebugEvent {
    var title: String { get }
    var analyticsParams: [String: Any] { get }
}
