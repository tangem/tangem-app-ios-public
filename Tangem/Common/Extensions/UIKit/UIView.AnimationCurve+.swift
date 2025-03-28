//
//  UIView.AnimationCurve+.swift
//  Tangem
//
//

import Foundation
import UIKit

extension UIView.AnimationCurve {
    func toAnimationOptions() -> UIView.AnimationOptions {
        switch self {
        case .easeInOut:
            return .curveEaseInOut
        case .easeIn:
            return .curveEaseIn
        case .easeOut:
            return .curveEaseOut
        case .linear:
            return .curveLinear
        @unknown default:
            assertionFailure("Unknown animation curve received \(rawValue)")
            return []
        }
    }

    func toMediaTimingFunction() -> CAMediaTimingFunction {
        switch self {
        case .easeInOut:
            return .init(name: .easeInEaseOut)
        case .easeIn:
            return .init(name: .easeIn)
        case .easeOut:
            return .init(name: .easeOut)
        case .linear:
            return .init(name: .linear)
        @unknown default:
            assertionFailure("Unknown animation curve received \(rawValue)")
            return .init(name: .default)
        }
    }
}
