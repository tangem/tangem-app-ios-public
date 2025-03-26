//
//  FetchMore.swift
//  Tangem
//
//

import Foundation

public struct FetchMore: Identifiable {
    public let id: String
    public let start: () -> Void

    public init(id: String = UUID().uuidString, start: @escaping () -> Void) {
        self.id = id
        self.start = start
    }
}
