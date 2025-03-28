//
//  UITraitCollection+.swift
//  Tangem
//
//

import UIKit

extension UITraitCollection {
    /// See https://developer.apple.com/documentation/uikit/uitraitcollection/3238080-currenttraitcollection for details.
    @available(*, deprecated, message: "Doesn't work correctly in all cases, don't use")
    static var isDarkMode: Bool {
        UITraitCollection.current.userInterfaceStyle == .dark
    }

    var isDarkMode: Bool {
        userInterfaceStyle == .dark
    }
}
