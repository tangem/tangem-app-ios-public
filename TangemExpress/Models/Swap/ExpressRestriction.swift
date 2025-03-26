//
//  ExpressRestriction.swift
//  TangemExpress
//
//

import Foundation
import struct BlockchainSdk.Fee

public enum ExpressRestriction {
    case tooSmallAmount(_ minAmount: Decimal)
    case tooBigAmount(_ maxAmount: Decimal)
    case approveTransactionInProgress(spender: String)
    case insufficientBalance(_ requiredAmount: Decimal)
    case feeCurrencyHasZeroBalance
    case feeCurrencyInsufficientBalanceForTxValue(_ estimatedTxValue: Decimal)
}
