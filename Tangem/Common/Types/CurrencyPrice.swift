//
//  CurrencyPrice.swift
//  Tangem
//
//  Created by Sergey Balashov on 14.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import TangemExchange

struct CurrencyPrice {
    let amount: Decimal
    let currency: Currency

    var formatted: String {
        let amount = amount.groupedFormatted(maximumFractionDigits: currency.decimalCount)
        return "\(amount) \(currency.symbol)"
    }

    init(amount: Decimal, currency: Currency) {
        self.amount = amount
        self.currency = currency
    }
}
