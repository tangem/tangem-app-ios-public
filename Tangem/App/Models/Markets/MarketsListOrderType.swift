//
//  MarketsListOrderType.swift
//  Tangem
//
//  Created by skibinalexander on 29.05.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

enum MarketsListOrderType: String, CaseIterable, Encodable, CustomStringConvertible {
    case rating
    case trending
    case buyers
    case gainers
    case losers

    var description: String {
        switch self {
        // TODO: - Need localize
        default:
            return rawValue
        }
    }
}
