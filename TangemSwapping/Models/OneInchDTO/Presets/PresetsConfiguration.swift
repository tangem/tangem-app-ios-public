//
//  PresetsConfiguration.swift
//
//
//  Created by Pavel Grechikhin on 31.10.2022.
//

import Foundation

public struct PresetsConfiguration: Decodable {
    public let maxResult: [PresetsGas]?
    public let lowestGas: [PresetsGas]?

    enum CodingKeys: String, CodingKey {
        case maxResult = "MAX_RESULT"
        case lowestGas = "LOWEST_GAS"
    }
}
