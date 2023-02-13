//
//  SwapReferrerAccount.swift
//  Tangem
//
//  Created by Sergey Balashov on 10.02.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

struct SwapReferrerAccount: Decodable {
    let address: String
    let fee: Decimal
}
