//
//  UserCurrenciesProviding.swift
//  TangemExchange
//
//  Created by Sergey Balashov on 06.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public protocol UserCurrenciesProviding {
    func getCurrencies(blockchain: ExchangeBlockchain) -> [Currency]
    func add(currency: Currency)
}
