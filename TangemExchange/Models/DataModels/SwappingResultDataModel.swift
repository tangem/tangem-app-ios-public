//
//  SwappingResultDataModel.swift
//  TangemExchange
//
//  Created by Sergey Balashov on 19.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public struct SwappingResultDataModel {
    public let amount: Decimal
    public let fee: Decimal

    public let isEnoughAmountForExchange: Bool
    public let isEnoughAmountForFee: Bool
    public let isPermissionRequired: Bool

    public init(
        amount: Decimal,
        fee: Decimal,
        isEnoughAmountForExchange: Bool,
        isEnoughAmountForFee: Bool,
        isPermissionRequired: Bool
    ) {
        self.amount = amount
        self.fee = fee
        self.isEnoughAmountForExchange = isEnoughAmountForExchange
        self.isEnoughAmountForFee = isEnoughAmountForFee
        self.isPermissionRequired = isPermissionRequired
    }
}
