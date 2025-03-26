//
//  Int+.swift
//  Tangem
//
//

import Foundation

extension Int: @retroactive Identifiable {
    public var id: Int { self }
}
