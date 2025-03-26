//
//  OptionalProtocol.swift
//  Tangem
//
//

import Foundation

/// A lightweight interface that allows writing extensions with generic constraints for the `Swift.Optional` type.
protocol OptionalProtocol {
    associatedtype Wrapped

    var wrapped: Wrapped? { get }
}

extension Optional: OptionalProtocol {
    var wrapped: Wrapped? { self }
}
