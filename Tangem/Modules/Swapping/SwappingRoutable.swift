//
//  SwappingRoutable.swift
//  Tangem
//
//  Created by Sergey Balashov on 18.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import TangemExchange

protocol SwappingRoutable: AnyObject {
    func presentSwappingTokenList(sourceCurrency: Currency, userCurrencies: [Currency])
    func presentSuccessView(fromCurrency: String, toCurrency: String)
    func presentPermissionView(transactionInfo: ExchangeTransactionInfo, transactionSender: TransactionSenderProtocol)
}
