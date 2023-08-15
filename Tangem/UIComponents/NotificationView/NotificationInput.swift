//
//  NotificationInput.swift
//  Tangem
//
//  Created by Andrew Son on 15/08/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

typealias NotificationId = String

struct NotificationInput: Identifiable, Equatable {
    let style: NotificationView.Style
    let settings: NotificationView.Settings

    var id: NotificationId { settings.id }

    static func == (lhs: NotificationInput, rhs: NotificationInput) -> Bool {
        lhs.settings == rhs.settings
    }
}
