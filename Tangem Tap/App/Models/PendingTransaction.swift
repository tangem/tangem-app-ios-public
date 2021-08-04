//
//  PendingTransaction.swift
//  Tangem Tap
//
//  Created by Andrew Son on 11/06/21.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation
import BlockchainSdk

struct PendingTransaction {
    enum Direction {
        case incoming
        case outgoing
    }
    
    let destination: String
    let transferAmount: String
    let canBePushed: Bool
    let direction: Direction
}
