//
//  WalletModel+ExpressWallet.swift
//  Tangem
//
//  Created by Sergey Balashov on 10.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import TangemExpress
import BlockchainSdk

extension WalletModel: ExpressWallet {
    var expressCurrency: TangemExpress.ExpressCurrency {
        tokenItem.expressCurrency
    }

    var decimalCount: Int {
        tokenItem.decimalCount
    }

    var isFeeCurrency: Bool {
        tokenItem == feeTokenItem
    }

    var feeCurrencyHasPositiveBalance: Bool {
        wallet.hasFeeCurrency(amountType: amountType)
    }

    func getBalance() throws -> Decimal {
        guard let balanceValue else {
            throw ExpressManagerError.amountNotFound
        }

        return balanceValue
    }
}
