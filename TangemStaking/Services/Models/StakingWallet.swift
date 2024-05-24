//
//  StakingWallet.swift
//  TangemStaking
//
//  Created by Sergey Balashov on 24.05.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation
import BlockchainSdk

protocol StakingWallet {
    var blockchain: Blockchain { get }
    var defaultAddress: String { get }
}
