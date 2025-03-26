//
//  StakingPendingTransactionRecord.swift
//  Tangem
//
//

import Foundation

public struct StakingPendingTransactionRecord: Hashable, Codable {
    public let integrationId: String
    public let amount: Decimal
    public let validator: Validator
    public let type: ActionType
    public let date: Date

    public struct Validator: Hashable, Codable {
        public let address: String?
        public let name: String?
        public let iconURL: URL?
        public let apr: Decimal?
    }

    public enum ActionType: Hashable, Codable {
        case stake
        case unstake
        case withdraw
        case claimRewards
        case restakeRewards
        case voteLocked
        case unlockLocked
        case restake
        case claimUnstaked
    }
}
