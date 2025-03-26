//
//  StakingBalanceType.swift
//  TangemApp
//
//

import Foundation

public enum StakingBalanceType: Hashable {
    case locked
    case warmup
    case pending
    case active
    case unbonding(date: Date?)
    case unstaked
    case rewards
}
