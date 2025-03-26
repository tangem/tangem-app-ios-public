//
//  SentExpressTransactionData.swift
//  Tangem
//
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
