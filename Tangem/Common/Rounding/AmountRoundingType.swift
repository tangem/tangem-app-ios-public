//
//  AmountRoundingType.swift
//  Tangem
//
//  Created by Andrey Chukavin on 23.01.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

enum AmountRoundingType {
    case shortestFraction(roundingMode: NSDecimalNumber.RoundingMode)
    case `default`(roundingMode: NSDecimalNumber.RoundingMode, scale: Int)

    static func defaultFiat(roundingMode: NSDecimalNumber.RoundingMode) -> AmountRoundingType {
        .default(roundingMode: roundingMode, scale: 2)
    }
}
