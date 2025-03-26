//
//  TokenItem+StakingTokenItem.swift
//  Tangem
//
//

import Foundation
import TangemStaking
import BlockchainSdk

extension TokenItem {
    var stakingTokenItem: TangemStaking.StakingTokenItem? {
        StakeKitNetworkType(rawValue: blockchain.stakeKitNetworkID).map { network in
            StakingTokenItem(
                network: network,
                contractAddress: contractAddress,
                name: name,
                decimals: decimalCount,
                symbol: currencySymbol
            )
        }
    }
}

private extension Blockchain {
    var stakeKitNetworkID: String {
        switch self {
        case .bsc: "binance"
        default: coinId
        }
    }
}
