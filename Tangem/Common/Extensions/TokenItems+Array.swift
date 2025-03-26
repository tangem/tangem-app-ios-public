//
//  TokenItems+Array.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk

extension Array where Element == TokenItem {
    mutating func remove(_ tokenItem: TokenItem) {
        if let index = firstIndex(where: { $0 == tokenItem }) {
            remove(at: index)
        }
    }
}
