//
//  Exchange+Utils.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 21.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import ExchangeSdk
import BlockchainSdk

// TODO: Move CaseIterable in sdk
extension ExchangeBlockchain: CaseIterable {
    public static var allCases: [ExchangeBlockchain] {
    [
        .ethereum,
        .bsc,
        .polygon,
        .optimism,
        .arbitrum,
        .gnosis,
        .avalanche,
        .fantom,
        .klayth,
        .aurora
    ]
    }
}

extension ExchangeBlockchain {
    static func exchangeBlockchain(from chainId: Int?) -> ExchangeBlockchain {
        return .gnosis
        // TODO: FIX IT
//        
//        guard let chainId = chainId,
//              let blockchain = ExchangeBlockchain.allCases.first(where: { $0.id == String(chainId) }) else {
//            fatalError("OneInch not support this blockchain")
//        }
//        
//        return blockchain
    }
}
