//
//  WalletConnectV2Error.swift
//  Tangem
//
//  Created by Andrew Son on 13/01/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import BlockchainSdk

enum WalletConnectV2Error: Error {
    case unsupportedBlockchains([BlockchainSdk.Blockchain])
}
