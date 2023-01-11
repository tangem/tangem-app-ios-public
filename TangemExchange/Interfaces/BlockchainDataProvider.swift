//
//  BlockchainDataProvider.swift
//  Tangem
//
//  Created by Sergey Balashov on 15.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public protocol BlockchainDataProvider {
    func getWalletAddress(currency: Currency) -> String?
    func hasPendingTransaction(currency: Currency) -> Bool

    func getBalance(for currency: Currency) async throws -> Decimal
    func getBalance(for blockchain: ExchangeBlockchain) async throws -> Decimal
    func getFiat(for currency: Currency, amount: Decimal) async throws -> Decimal
    func getFiat(for blockchain: ExchangeBlockchain, amount: Decimal) async throws -> Decimal
}
