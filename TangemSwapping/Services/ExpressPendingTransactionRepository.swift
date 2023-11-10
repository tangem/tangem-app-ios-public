//
//  ExpressPendingTransactionRepository.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 10.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

public protocol ExpressPendingTransactionRepository {
    func didSendApproveTransaction(swappingTxData: SwappingTransactionData)
    func didSendSwapTransaction(swappingTxData: SwappingTransactionData)
    
    func hasPending(for network: String) -> Bool
}
