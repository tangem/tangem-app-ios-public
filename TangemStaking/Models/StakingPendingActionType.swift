//
//  StakingPendingActionType.swift
//  TangemApp
//
//

import Foundation

public struct StakingPendingActionInfo: Hashable {
    public let type: ActionType
    public let passthrough: String

    public enum ActionType: Hashable {
        case withdraw
        case claimRewards
        case restakeRewards
        case voteLocked
        case unlockLocked
        case restake
        case claimUnstaked
    }
}
