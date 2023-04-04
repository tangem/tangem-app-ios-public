//
//  SwappingResultData.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 19.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public struct SwappingResultData {
    public let amount: Decimal
    public let fee: Decimal

    public let isEnoughAmountForSwapping: Bool
    public let isEnoughAmountForFee: Bool
    public let isPermissionRequired: Bool

    public init(
        amount: Decimal,
        fee: Decimal,
        isEnoughAmountForSwapping: Bool,
        isEnoughAmountForFee: Bool,
        isPermissionRequired: Bool
    ) {
        self.amount = amount
        self.fee = fee
        self.isEnoughAmountForSwapping = isEnoughAmountForSwapping
        self.isEnoughAmountForFee = isEnoughAmountForFee
        self.isPermissionRequired = isPermissionRequired
    }
}
