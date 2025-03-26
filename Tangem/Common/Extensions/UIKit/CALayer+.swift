//
//  CALayer+.swift
//  Tangem
//
//

import Foundation
import UIKit

extension CALayer {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) {
        cornerRadius = radius
        maskedCorners = corners.toCACornerMask()
        masksToBounds = true
    }
}
