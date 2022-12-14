//
//  TransactionSenderMock.swift
//  Tangem
//
//  Created by Sergey Balashov on 12.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import TangemExchange

struct TransactionSenderMock: TransactionSenderProtocol {
    func sendTransaction(_ info: ExchangeTransactionDataModel) async throws {}
}
