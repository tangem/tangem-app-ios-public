//
//  SendType.swift
//  Tangem
//
//

import Foundation
import TangemStaking

enum SendType {
    case send
    case sell(parameters: PredefinedSellParameters)
    case staking(manager: StakingManager)
    case unstaking(manager: StakingManager, action: UnstakingModel.Action)
    case restaking(manager: StakingManager, action: UnstakingModel.Action)
    case stakingSingleAction(manager: StakingManager, action: UnstakingModel.Action)
    case onramp
}

struct PredefinedSellParameters {
    let amount: Decimal
    let destination: String
    let tag: String?
}
