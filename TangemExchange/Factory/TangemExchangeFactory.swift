//
//  TangemExchangeFactory.swift
//  TangemExchange
//
//  Created by Sergey Balashov on 15.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

/// Public factory for work with exchange
public enum TangemExchangeFactory {
    public static func createExchangeManager(
        source: Currency,
        destination: Currency?,
        blockchainProvider: BlockchainNetworkProvider,
        isDebug: Bool = false
    ) -> ExchangeManager {
        let exchangeItems = ExchangeItems(source: source, destination: destination)
        let exchangeService = OneInchAPIService(isDebug: isDebug)

        let provider = OneInchExchangeProvider(blockchainProvider: blockchainProvider, exchangeService: exchangeService)
        return CommonExchangeManager(provider: provider, exchangeItems: exchangeItems)
    }

    // TODO: To future
    private static func buildOneInchLimitService(isDebug: Bool) -> OneInchLimitOrderProvider {
        return OneInchLimitOrderService(isDebug: isDebug)
    }
}
