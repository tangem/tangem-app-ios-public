//
//  ExchangeItem.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 21.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import BlockchainSdk
import Combine

class ExchangeItem: Identifiable {
    let isLocked: Bool
    var currency: Currency
    var allowance: Decimal = 0

    init(isLocked: Bool, currency: Currency) {
        self.isLocked = isLocked
        self.currency = currency
    }

    func isAvailableForExchange(for amountValue: Decimal) -> Bool {
        if !currency.isToken {
            return true
        } else {
            if amountValue <= allowance {
                return true
            }
            return false
        }
    }
}
