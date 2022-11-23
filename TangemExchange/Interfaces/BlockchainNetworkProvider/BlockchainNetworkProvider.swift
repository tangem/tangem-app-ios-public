//
//  BlockchainNetworkProvider.swift
//  Tangem
//
//  Created by Sergey Balashov on 15.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import struct BlockchainSdk.Transaction

public protocol BlockchainNetworkProvider {
    func signAndSend(_ transaction: Transaction) async throws
    func getFee(currency: Currency, amount: Decimal, destination: String) async throws -> [Decimal]
    func createTransaction(for info: ExchangeTransactionInfo) throws -> Transaction
}
