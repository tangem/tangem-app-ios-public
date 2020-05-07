//
//  BlockchairResponse.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 14.02.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation

struct BlockchairTransaction: Codable {
    let block_id: Int64?
}

struct BlockchairUtxo: Codable {
    let transaction_hash: String?
    let index: Int?
    let value: UInt64?
}
