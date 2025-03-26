//
//  OverlayContentState.swift
//  Tangem
//
//

import Foundation

enum OverlayContentState: Equatable {
    enum Trigger {
        case dragGesture
        case tapGesture
    }

    case expanded(trigger: Trigger)
    case collapsed

    var isCollapsed: Bool {
        if case .collapsed = self {
            return true
        }
        return false
    }

    var isTapGesture: Bool {
        if case .expanded(.tapGesture) = self {
            return true
        }
        return false
    }
}
