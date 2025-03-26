//
//  FeatureState.swift
//  Tangem
//
//

import Foundation

enum FeatureState: String, Hashable, Identifiable, CaseIterable, Codable {
    case `default`
    case off
    case on

    var id: String { rawValue }

    var name: String {
        rawValue.capitalized
    }
}
