//
//  ExchangeTransactionDataModel+Mock.swift
//  Tangem
//
//  Created by Sergey Balashov on 12.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import TangemExchange

extension ExchangeTransactionDataModel {
    static let mock = ExchangeTransactionDataModel(
        sourceCurrency: .mock,
        sourceBlockchain: .ethereum,
        destinationCurrency: .mock,
        sourceAddress: "",
        destinationAddress: "",
        txData: Data(),
        amount: 123_000_000_000_000,
        value: 0,
        gasValue: 21000,
        gasPrice: 15_000_000_000
    )
}
