//
//  BitcoinCashAddressValidator.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 14.02.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation
import BinanceChain

public class BitcoinCashAddressValidator {
    func validate(_ address: String) -> Bool {
        return (try? BitcoinCashAddress(address)) != nil
    }
}
