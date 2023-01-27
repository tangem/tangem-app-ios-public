//
//  SwappingDependenciesFactoring.swift
//  Tangem
//
//  Created by Sergey Balashov on 26.01.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import TangemExchange

protocol SwappingDependenciesFactoring {
    // TODO: I hope it will be changed to protocol
    var walletModel: WalletModel { get }
    var userWalletModel: UserWalletModel { get }
    var swappingDestinationService: SwappingDestinationServicing { get }
    var currencyMapper: CurrencyMapping { get }
    var tokenIconURLBuilder: TokenIconURLBuilding { get }
    var userCurrenciesProvider: UserCurrenciesProviding { get }
    var transactionSender: TransactionSendable { get }

    func exchangeManager(source: Currency, destination: Currency?) -> ExchangeManager
}
