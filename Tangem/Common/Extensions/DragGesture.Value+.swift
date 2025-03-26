//
//  DragGesture.Value+.swift
//  Tangem
//
//

import SwiftUI

extension DragGesture.Value {
    /// - Warning: Simple and naive, may not cover all edge cases (e.g. when `xDiff` == `yDiff`).
    var isMovingInHorizontalDirection: Bool {
        let xDiff = abs(startLocation.x - location.x)
        let yDiff = abs(startLocation.y - location.y)

        return xDiff > yDiff
    }

    /// - Warning: Simple and naive, may not cover all edge cases (e.g. when `xDiff` == `yDiff`).
    var isMovingInVerticalDirection: Bool { !isMovingInHorizontalDirection }
}
