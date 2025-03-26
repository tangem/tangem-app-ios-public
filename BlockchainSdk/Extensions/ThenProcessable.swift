//
//  ThenProcessable.swift
//  BlockchainSdk
//
//

import Foundation

protocol ThenProcessable {}

extension ThenProcessable where Self: Any {
    func then(_ block: (inout Self) throws -> Void) rethrows -> Self {
        var copy = self
        try block(&copy)

        return copy
    }
}
