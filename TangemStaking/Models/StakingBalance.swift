//
//  StakingBalance.swift
//  TangemApp
//
//

import Foundation

public struct StakingBalance: Hashable {
    public let item: StakingTokenItem
    public let amount: Decimal
    public let balanceType: StakingBalanceType
    public let validatorType: StakingValidatorType
    public let inProgress: Bool
    public let actions: [StakingPendingActionInfo]

    public init(
        item: StakingTokenItem,
        amount: Decimal,
        balanceType: StakingBalanceType,
        validatorType: StakingValidatorType,
        inProgress: Bool,
        actions: [StakingPendingActionInfo]
    ) {
        self.item = item
        self.amount = amount
        self.balanceType = balanceType
        self.validatorType = validatorType
        self.inProgress = inProgress
        self.actions = actions
    }
}

public extension Array where Element == StakingBalance {
    /// All staked / blocked balances that were received from the blockchain
    func blocked() -> Self {
        filter { $0.balanceType != .pending }
    }

    /// The balance of "stakes" includes the `pending` balance from the local cache
    /// DO NOT use it to calculate the all balance. It can affect the balance, more that there is
    func stakes() -> Self {
        filter { $0.balanceType != .rewards }
    }

    func rewards() -> Self {
        filter { $0.balanceType == .rewards }
    }

    func sum() -> Decimal {
        reduce(.zero) { $0 + $1.amount }
    }
}
