//
//  AdaliteResponse.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 08.04.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation

struct AdaliteUnspentOutput {
    let id: String
    let index: Int
}

struct AdaliteBalanceResponse {
    let transactions: [String]
}
