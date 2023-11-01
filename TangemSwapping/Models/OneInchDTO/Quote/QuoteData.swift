//
//  QuoteData.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 01.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public struct QuoteData: Decodable {
    public let toAmount: String

    public let fromToken: TokenInfo?
    public let toToken: TokenInfo?
    public let protocols: [[[ProtocolInfo]]]?
    public let gas: Int?
}
