//
//  LiquiditySourcesList.swift
//
//
//  Created by Pavel Grechikhin on 31.10.2022.
//

import Foundation

public struct LiquiditySourcesList: Decodable {
    public let protocols: [LiquidityProtocol]
}
