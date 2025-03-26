//
//  ShapeStyle+.swift
//  Tangem
//
//

import Foundation
import SwiftUI

extension ShapeStyle {
    /// A way to hide a SwiftUI shape without altering the structural identity.
    /// See https://developer.apple.com/tutorials/swiftui-concepts/choosing-the-right-way-to-hide-a-view for details
    func hidden(_ shouldHide: Bool) -> some ShapeStyle {
        opacity(shouldHide ? 0.0 : 1.0)
    }

    func visible(_ shouldShow: Bool) -> some ShapeStyle {
        hidden(!shouldShow)
    }
}
