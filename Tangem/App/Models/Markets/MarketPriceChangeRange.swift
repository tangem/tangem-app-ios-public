//
//  MarketPriceChangeRange.swift
//  Tangem
//
//  Created by skibinalexander on 29.05.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

enum MarketPriceIntervalType: String, CaseIterable, Codable {
    case day = "24h"
    case week = "7d"
    case month = "1m"
}
