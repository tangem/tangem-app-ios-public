//
//  QuoteData.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 01.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public struct QuoteData: Decodable {
    public let fromToken: TokenInfo
    public let toToken: TokenInfo
    public let toTokenAmount: String
    public let fromTokenAmount: String
    public let protocols: [[[ProtocolInfo]]]
    public let estimatedGas: Int
}
