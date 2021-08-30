//
//  CGSize+.swift
//  Tangem Tap
//
//  Created by Andrew Son on 19.08.2021.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import CoreGraphics

public extension String.StringInterpolation {
    mutating func appendInterpolation(_ value: CGSize) {
        appendInterpolation(value.description)
    }
}

extension CGSize: CustomStringConvertible {
    public var description: String {
        "w: \(width.rounded()), h: \(height.rounded())"
    }
}
