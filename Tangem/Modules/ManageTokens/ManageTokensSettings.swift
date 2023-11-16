//
//  ManageTokensSettings.swift
//  Tangem
//
//  Created by skibinalexander on 25.10.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import BlockchainSdk
import TangemSdk

struct ManageTokensSettings {
    let longHashesSupported: Bool
    let existingCurves: [EllipticCurve]
}
