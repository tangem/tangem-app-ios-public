//
//  CurrencyMapping.swift
//  Tangem
//
//  Created by Sergey Balashov on 31.03.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import BlockchainSdk
import TangemSwapping

protocol CurrencyMapping {
    func mapToCurrency(token: Token, blockchain: Blockchain) -> Currency?
    func mapToCurrency(blockchain: Blockchain) -> Currency?
    func mapToCurrency(coinModel: CoinModel) -> Currency?

    func mapToToken(currency: Currency) -> Token?
}
