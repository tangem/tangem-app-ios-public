//
//  EthereumAddressValidator.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 13.12.2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

public class EthereumAddressValidator {
    func validate(_ address: String) -> Bool {
        guard !address.isEmpty,
            address.lowercased().starts(with: "0x"),
            address.count == 42
            else {
                return false
        }
        
        return true
    }
}
