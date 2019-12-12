//
//  StellarAddressValidator.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 11.12.2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation
import stellarsdk

public class StellarAddressValidator {
    func validate(_ address: String) -> Bool {
        let keyPair = try? KeyPair(accountId: address)
        return keyPair != nil
    }
}
