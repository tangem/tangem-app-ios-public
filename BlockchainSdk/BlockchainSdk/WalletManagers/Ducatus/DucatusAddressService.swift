//
//  DucatusAddressService.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 07.04.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation
import TangemSdk

public class DucatusAddressService: BitcoinAddressService {
    override func getNetwork(_ testnet: Bool) -> Data {
        return Data([UInt8(0x31)])
    }
}
