//
//  TokensList.swift
//  Tangem
//
//  Created by Pavel Grechikhin.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public struct TokensList: Decodable {
    public let tokens: [String: SwappingToken]
}
