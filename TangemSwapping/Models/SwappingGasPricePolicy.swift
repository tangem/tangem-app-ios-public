//
//  SwappingGasPricePolicy.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 13.05.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

public enum SwappingGasPricePolicy {
    case normal
    case priority

    public func value(for value: Int) -> Int {
        switch self {
        case .normal:
            return value
        case .priority:
            return value * 125 / 100
        }
    }
}
