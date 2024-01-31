//
//  SentExpressTransactionData.swift
//  Tangem
//
//  Created by Sergey Balashov on 23.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import TangemExpress

struct SentExpressTransactionData {
    let hash: String
    let source: WalletModel
    let destination: WalletModel
    let fee: Decimal
    let feeOption: FeeOption
    let provider: ExpressProvider
    let date: Date
    let expressTransactionData: ExpressTransactionData
}
