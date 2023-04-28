//
//  PresetsGas.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 31.03.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

public struct PresetsGas: Decodable {
    public let complexityLevel: Int
    public let mainRouteParts: Int
    public let parts: Int
    public let virtualParts: Int
}
