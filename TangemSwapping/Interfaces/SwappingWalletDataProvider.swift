//
//  SwappingWalletDataProvider.swift
//  Tangem
//
//  Created by Sergey Balashov on 15.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public protocol SwappingWalletDataProvider {
    func getWalletAddress(currency: Currency) -> String?
    func getGasModel(
        sourceAddress: String,
        destinationAddress: String,
        data: Data,
        blockchain: SwappingBlockchain,
        value: Decimal
    ) async throws -> EthereumGasDataModel

    func getBalance(for currency: Currency) async throws -> Decimal
    func getBalance(for blockchain: SwappingBlockchain) async throws -> Decimal
}
