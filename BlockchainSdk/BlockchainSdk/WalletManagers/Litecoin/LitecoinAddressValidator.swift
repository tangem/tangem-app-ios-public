//
//  LitecoinAddressValidator.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 31.01.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation

public class LitecoinAddressValidator: BitcoinAddressValidator {
    override var possibleFirstCharacters: [String] {
        ["l","m"]
    }
}
