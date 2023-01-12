//
//  ExchangeItems.swift
//  TangemExchange
//
//  Created by Sergey Balashov on 15.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public struct ExchangeItems {
    public var source: Currency
    public var destination: Currency?

    // TODO: Remove source fiatBalance from here because it send amount in fiat
    public var sourceBalance: Balance
    public var destinationBalance: Decimal?

    public init(
        source: Currency,
        destination: Currency?,
        sourceBalance: Balance = .zero
    ) {
        self.source = source
        self.destination = destination
        self.sourceBalance = sourceBalance
    }
}

public extension ExchangeItems {
    struct Balance {
        public static let zero = Balance(balance: 0, fiatBalance: 0)

        public let balance: Decimal
        public let fiatBalance: Decimal

        public init(balance: Decimal, fiatBalance: Decimal) {
            self.balance = balance
            self.fiatBalance = fiatBalance
        }
    }
}
