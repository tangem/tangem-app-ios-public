//
//  UserWalletsListProviderMock.swift
//  Tangem
//
//  Created by Sergey Balashov on 06.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import TangemExchange

struct UserWalletsListProviderMock: UserWalletsListProviding {
    func getUserCurrencies(blockchain: ExchangeBlockchain) -> [Currency] {
        [.mock]
    }

    func saveCurrencyInUserList(currency: Currency) {

    }
}
