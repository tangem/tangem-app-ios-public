//
//  CGSize+.swift
//  Tangem Tap
//
//  Created by Alexander Osokin on 06.10.2021.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation


func + (left: CGSize, right: CGSize) -> CGSize {
    return CGSize(width: left.width + right.width, height: left.height + right.height)
}

/**
 * ...
 * a += b
 */
func += (left: inout CGSize, right: CGSize) {
    left = left + right
}

/**
 * ...
 * a - b
 */
func - (left: CGSize, right: CGSize) -> CGSize {
    return CGSize(width: left.width - right.width, height: left.height - right.height)
}

/**
 * ...
 * a -= b
 */
func -= (left: inout CGSize, right: CGSize) {
    left = left - right
}
