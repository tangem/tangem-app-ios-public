//
//  Coin.swift
//  Tangem
//
//  Created by Alexander Osokin on 22.04.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

extension CoinsResponse {
    struct Coin: Codable {
        public let id: String
        public let name: String
        public let symbol: String
        public let active: Bool
        public let networks: [CoinsResponse.Network]
    }
}
