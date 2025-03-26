//
//  SendCompactViewEditableType.swift
//  Tangem
//
//

import Foundation
import SwiftUI

enum SendCompactViewEditableType {
    case disabled
    case enabled(action: (() -> Void)? = nil)

    var background: Color {
        switch self {
        case .disabled: Colors.Button.disabled
        case .enabled: Colors.Background.action
        }
    }
}
