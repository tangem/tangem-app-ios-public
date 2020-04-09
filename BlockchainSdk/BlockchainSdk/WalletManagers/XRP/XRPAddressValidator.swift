//
//  XRPAddressValidator.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 09.04.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation

public class XRPAddressValidator {
    func validate(_ address: String) -> Bool {
        return XRPWallet.validate(address: address)
    }
}
