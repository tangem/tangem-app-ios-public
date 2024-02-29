//
//  FeeUpdateResult.swift
//  Tangem
//
//  Created by Andrey Chukavin on 29.01.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import BlockchainSdk

struct FeeUpdateResult {
    let oldFee: Amount?
    let newFee: Amount
}
