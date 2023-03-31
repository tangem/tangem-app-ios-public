//
//  CurrencyAmount.swift
//  Tangem
//
//  Created by Sergey Balashov on 14.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import TangemSwapping
import Foundation

struct CurrencyAmount: Hashable {
    let value: Decimal
    let currency: Currency

    var formatted: String {
        let amount = value.groupedFormatted(maximumFractionDigits: currency.decimalCount)
        return "\(amount) \(currency.symbol)"
    }

    init(value: Decimal, currency: Currency) {
        self.value = value
        self.currency = currency
    }
}
