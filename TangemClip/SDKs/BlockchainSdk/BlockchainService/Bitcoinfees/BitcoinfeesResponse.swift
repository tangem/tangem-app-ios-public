//
//  BitcoinfeesResponse.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 17.09.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation

struct BitcoinfeesResponse: Codable {
    let fastestFee: Int
    let halfHourFee : Int
    let hourFee: Int
}
