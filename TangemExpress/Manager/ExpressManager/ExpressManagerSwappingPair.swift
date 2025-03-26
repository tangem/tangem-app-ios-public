//
//  ExpressManagerSwappingPair.swift
//  TangemExpress
//
//

import Foundation

public struct ExpressManagerSwappingPair: Hashable {
    public let source: ExpressWallet
    public let destination: ExpressWallet

    public init(source: ExpressWallet, destination: ExpressWallet) {
        self.source = source
        self.destination = destination
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(source.expressCurrency)
        hasher.combine(destination.expressCurrency)
    }

    public static func == (lhs: ExpressManagerSwappingPair, rhs: ExpressManagerSwappingPair) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
}
