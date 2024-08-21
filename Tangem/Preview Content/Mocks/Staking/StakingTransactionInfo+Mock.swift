//
//  StakingTransactionInfo+Mock.swift
//  Tangem
//
//  Created by Sergey Balashov on 17.07.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation
import TangemStaking

extension StakingTransactionInfo {
    static let mock = StakingTransactionInfo(
        id: UUID().uuidString,
        actionId: UUID().uuidString,
        network: "solana",
        type: .enter,
        status: .created,
        unsignedTransactionData: Data(),
        fee: 1.23
    )
}
