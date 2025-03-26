//
//  CALayerSnapshotOptions.swift
//  Tangem
//
//

import Foundation

enum CALayerSnapshotOptions {
    /// The `CALayer` instance itself.
    case `default`
    /// Uses `CALayer.model()`.
    case model
    /// Uses `CALayer.presentation()`.
    case presentation
}
