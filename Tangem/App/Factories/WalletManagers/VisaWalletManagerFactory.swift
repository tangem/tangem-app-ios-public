//
//  VisaWalletManagerFactory.swift
//  Tangem
//
//  Created by Andrew Son on 14/12/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import TangemSdk
import BlockchainSdk

struct VisaWalletManagerFactory: AnyWalletManagerFactory {
    func makeWalletManager(for token: StorageEntry, keys: [CardDTO.Wallet]) throws -> WalletManager {
        return try VisaUtilities().getWalletManager(keys: keys)
    }
}
