//
//  BlockchainInfoApiResponse.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 13.11.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation


struct BlockchainInfoApiResponse: Codable {
    let regular: Int
    let priority: Int
}
