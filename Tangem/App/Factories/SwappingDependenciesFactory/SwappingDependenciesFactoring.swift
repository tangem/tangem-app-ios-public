//
//  SwappingDependenciesFactoring.swift
//  Tangem
//
//  Created by Sergey Balashov on 26.01.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import TangemExchange

protocol SwappingDependenciesFactoring {
    // TODO: Should be change to protocol
    func walletModel() -> WalletModel
    func userWalletModel() -> UserWalletModel
    func exchangeManager(source: Currency, destination: Currency?) -> ExchangeManager
    func swappingDestinationService() -> SwappingDestinationServicing
    func currencyMapper() -> CurrencyMapping
    func tokenIconURLBuilder() -> TokenIconURLBuilding
    func userCurrenciesProvider() -> UserCurrenciesProviding
    func transactionSender() -> TransactionSendable
}
