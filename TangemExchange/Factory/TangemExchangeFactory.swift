//
//  TangemExchangeFactory.swift
//  TangemExchange
//
//  Created by Sergey Balashov on 15.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

/// Public factory for work with exchange
public struct TangemExchangeFactory {
    public init() {}

    public func createExchangeManager<TxBuilder: TransactionBuilder>(
        transactionBuilder: TxBuilder,
        blockchainInfoProvider: BlockchainDataProvider,
        source: Currency,
        destination: Currency,
        amount: Decimal? = nil
    ) -> ExchangeManager {
        let exchangeItems = ExchangeItems(source: source, destination: destination)
        let exchangeService = OneInchAPIService()
        let provider = OneInchExchangeProvider(exchangeService: exchangeService)

        return DefaultExchangeManager(
            exchangeProvider: provider,
            transactionBuilder: transactionBuilder,
            blockchainInfoProvider: blockchainInfoProvider,
            exchangeItems: exchangeItems,
            amount: amount
        )
    }
}
