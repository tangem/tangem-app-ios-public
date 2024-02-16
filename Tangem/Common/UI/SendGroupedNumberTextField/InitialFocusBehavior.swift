//
//  InitialFocusBehavior.swift
//  Tangem
//
//  Created by Andrey Chukavin on 12.02.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

enum InitialFocusBehavior {
    case noFocus
    case immediateFocus
    case delayedFocus(duration: TimeInterval)
}

extension InitialFocusBehavior {
    var delayDuration: TimeInterval? {
        switch self {
        case .noFocus:
            nil
        case .immediateFocus:
            0
        case .delayedFocus(let duration):
            duration
        }
    }
}
