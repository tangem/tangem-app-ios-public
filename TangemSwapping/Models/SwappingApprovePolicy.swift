//
//  SwappingApprovePolicy.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 04.05.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

public enum SwappingApprovePolicy: Hashable {
    case amount(Decimal)
    case unlimited

    public var value: Decimal {
        switch self {
        case .amount(let decimal):
            return decimal
        case .unlimited:
            return .greatestFiniteMagnitude
        }
    }
}
