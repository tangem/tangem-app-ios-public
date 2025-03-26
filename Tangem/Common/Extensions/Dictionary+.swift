//
//  Dictionary+.swift
//  Tangem
//
//

import Foundation

extension Dictionary {
    mutating func removeAll(where shouldBeRemoved: (_ pair: (key: Key, value: Value)) throws -> Bool) rethrows {
        try filter(shouldBeRemoved)
            .forEach { removeValue(forKey: $0.key) }
    }
}
