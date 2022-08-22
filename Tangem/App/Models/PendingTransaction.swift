//
//  PendingTransaction.swift
//  Tangem
//
//  Created by Andrew Son on 11/06/21.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation
import BlockchainSdk

struct PendingTransaction: Hashable, Identifiable {
    var id: Int { hashValue }

    let amountType: Amount.AmountType
    let destination: String
    let transferAmount: String
    let canBePushed: Bool
    let direction: Direction
}

extension PendingTransaction {
    enum Direction {
        case incoming
        case outgoing
    }
}
