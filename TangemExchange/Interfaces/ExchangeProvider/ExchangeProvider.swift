//
//  ExchangeProvider.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 08.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

protocol ExchangeProvider {
    func fetchExchangeAmountAllowance(for currency: Currency) async throws -> Decimal
    func fetchTxDataForSwap(
        items: ExchangeItems,
        amount: String,
        slippage: Int
    ) async throws -> ExchangeSwapDataModel

    func sendSwapTransaction(_ info: SwapTransactionInfo, gasValue: Decimal, gasPrice: Decimal) async throws
    func submitPermissionForToken(_ info: SwapTransactionInfo, gasPrice: Decimal) async throws

    func approveTxData(for currency: Currency) async throws -> ExchangeApprovedDataModel
    func getSpenderAddress(for currency: Currency) async throws -> String
}


