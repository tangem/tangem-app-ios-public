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
    static func exchangeBlockchain(from chainId: Int) -> ExchangeBlockchain {
        guard let blockchain = ExchangeBlockchain.allCases.first { $0.id == chainId } else {
            fatalError("OneInch not support this blockchain")
        }
        
        return blockchain
    }
    
    static func convert(from blockchainNetwork: BlockchainNetwork) -> ExchangeBlockchain {
        switch blockchainNetwork.blockchain {
        case .ethereum:
            return .ethereum
        case .bsc:
            return .bsc
        case .polygon:
            return .polygon
        case .avalanche:
            return .avalanche
        case .fantom:
            return .fantom
        case .arbitrum:
            return .arbitrum
        case .optimism:
            return .optimism
        case .gnosis:
            return .gnosis
        default:
            fatalError("Unknown blockchain")
        }
    }
}
