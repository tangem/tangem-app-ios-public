//
//  Collection+.swift
//  BlockchainSdk
//
//

import Foundation

extension Collection {
    var nilIfEmpty: Self? {
        return isEmpty ? nil : self
    }

    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
