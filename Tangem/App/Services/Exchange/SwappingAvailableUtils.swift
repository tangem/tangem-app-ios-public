//
//  SupportedExchangeBlockchain.swift
//  Tangem
//
//  Created by Sergey Balashov on 02.03.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import TangemExchange
import BlockchainSdk

struct SwappingAvailableUtils {
    private let supportedBlockchains: [ExchangeBlockchain] = [
        .ethereum,
        .bsc,
        .polygon,
        .optimism,
//        .arbitrum, TODO: Add after fix https://tangem.atlassian.net/browse/IOS-3038
        .gnosis,
        .avalanche,
        .fantom,
    ]

    func isSupportSwapping(blockchainNetworkId: String) -> Bool {
        // toggleIsOn
        guard FeatureProvider.isAvailable(.exchange) else {
            return false
        }

        guard let blockchain = ExchangeBlockchain(networkId: blockchainNetworkId) else {
            return false
        }

        return supportedBlockchains.contains(blockchain)
    }
}
