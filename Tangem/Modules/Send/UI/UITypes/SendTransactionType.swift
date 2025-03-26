//
//  SendTransactionType.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk
import TangemStaking

enum SendTransactionType {
    case transfer(BSDKTransaction)
    case staking(StakingTransactionAction)
}
