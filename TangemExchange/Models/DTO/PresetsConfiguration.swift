//
//  PresetsConfiguration.swift
//  
//
//  Created by Pavel Grechikhin on 31.10.2022.
//

import Foundation

public struct PresetsConfiguration: Decodable {
    public let maxResult: [Gas]?
    public let lowestGas: [Gas]?

    enum CodingKeys: String, CodingKey {
        case maxResult = "MAX_RESULT"
        case lowestGas = "LOWEST_GAS"
    }
}

public struct Gas: Decodable {
    public let complexityLevel: Int
    public let mainRouteParts: Int
    public let parts: Int
    public let virtualParts: Int
}
