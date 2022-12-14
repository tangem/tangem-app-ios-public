//
//  TransactionSenderProtocol.swift
//  TangemExchange
//
//  Created by Sergey Balashov on 12.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public protocol TransactionSenderProtocol {
    func sendTransaction(_ info: ExchangeTransactionDataModel) async throws
}
