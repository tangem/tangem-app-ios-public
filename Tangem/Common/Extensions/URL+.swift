//
//  URL+.swift
//  Tangem
//
//

import Foundation

extension URL: @retroactive Identifiable {
    public var id: String { absoluteString }
}
