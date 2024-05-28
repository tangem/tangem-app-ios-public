//
//  DummyMarketTokenModelFactory.swift
//  Tangem
//
//  Created by skibinalexander on 27.05.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

struct DummyMarketTokenModelFactory {
    // TODO: Maybe replace in mock json file. Need for use in preview
    func list() -> [MarketTokenModel] {
        [
            MarketTokenModel(
                id: "bitcoin",
                name: "Bitcoin",
                symbol: "BTC",
                marketCup: "$1.259 T",
                marketRaiting: "1"
            ),
            MarketTokenModel(
                id: "ethereum",
                name: "Ethereum",
                symbol: "ETH",
                marketCup: "$382.744 B ",
                marketRaiting: "2"
            ),
            MarketTokenModel(
                id: "tether",
                name: "Tether",
                symbol: "USDT",
                marketCup: "$111.436 B",
                marketRaiting: "3"
            ),
            MarketTokenModel(
                id: "binance",
                name: "Binance",
                symbol: "BNB",
                marketCup: "$94.244 B",
                marketRaiting: "4"
            ),
            MarketTokenModel(
                id: "polygon",
                name: "Polygon",
                symbol: "MATIC",
                marketCup: "$21.690 B",
                marketRaiting: "5"
            ),
        ]
    }
}
