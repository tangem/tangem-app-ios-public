//
//  NEARNetworkResult.GasPrice.swift
//  BlockchainSdk
//
//  Created by Andrey Fedorov on 26.10.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

extension NEARNetworkResult {
    struct GasPrice: Decodable {
        let gasPrice: String
    }
}
