//
//  CGRect+.swift
//  Tangem
//
//

import CoreGraphics

extension CGRect {
    /// Returns whether a rectangle can be rendered in the UI (i.e. its size neither zero nor infinity).
    var canBeRendered: Bool {
        return !isInfinite && !isEmpty
    }
}
