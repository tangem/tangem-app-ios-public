//
//  CommonAllowanceProvider.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 10.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

class CommonAllowanceProvider {
    private let allowanceLimit: ThreadSafeContainer<[ExpressCurrency: Decimal]> = [:]
    // Cached addresses for check approving transactions
    private let pendingTransactions: ThreadSafeContainer<[ExpressCurrency: PendingTransactionState]> = [:]
}

extension CommonAllowanceProvider {
    enum PendingTransactionState: Hashable {
        case pending(destination: String)
    }
}
