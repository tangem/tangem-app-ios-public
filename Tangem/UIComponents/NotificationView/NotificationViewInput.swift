//
//  NotificationViewInput.swift
//  Tangem
//
//

import Foundation

typealias NotificationViewId = Int

struct NotificationViewInput: Identifiable, Equatable {
    let style: NotificationView.Style
    let severity: NotificationView.Severity
    let settings: NotificationView.Settings

    var id: NotificationViewId { settings.id }

    static func == (lhs: NotificationViewInput, rhs: NotificationViewInput) -> Bool {
        lhs.settings.id == rhs.settings.id
    }
}
