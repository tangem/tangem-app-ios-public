//
//  SwappingTransactionSender.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 12.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import TangemSwapping
import BlockchainSdk

public protocol SwappingTransactionSender {
    func sendTransaction(_ data: SwappingTransactionData) async throws -> TransactionSendResult
}
