//
//  RateAppRequest.swift
//  Tangem
//
//

import Foundation

/// Controller to service communication messages.
struct RateAppRequest {
    let isLocked: Bool
    let isSelected: Bool
    let isBalanceLoaded: Bool
    let displayedNotifications: [NotificationViewInput]
}
