//
//  PendingActionMapper.swift
//  Tangem
//
//

import Foundation
import TangemStaking

struct PendingActionMapper {
    private let balance: StakingBalance
    private let validators: [ValidatorInfo]

    init(balance: StakingBalance, validators: [ValidatorInfo]) {
        self.balance = balance
        self.validators = validators
    }

    func getAction() throws -> PendingActionMapper.Action {
        switch balance.balanceType {
        case .warmup, .unbonding, .pending:
            throw PendingActionMapperError.notSupported
        case .active:
            let unstake = stakingAction(type: .unstake)

            if let restakeAction = balance.actions.first(where: { $0.type == .restake }),
               validators.filter(\.preferred).count > 1 {
                let restake = stakingAction(
                    type: .pending(.restake(passthrough: restakeAction.passthrough))
                )

                return .multiple([unstake, restake])
            }
            return .single(unstake)
        case .unstaked:
            var withdrawType: StakingAction.PendingActionType?
            let withdraws = balance.actions.filter { $0.type == .withdraw }.map { $0.passthrough }

            if !withdraws.isEmpty {
                withdrawType = .withdraw(passthroughs: withdraws.toSet())
            }

            var claimUnstakedType: StakingAction.PendingActionType?
            let claimsUnstaked = balance.actions.filter { $0.type == .claimUnstaked }.map { $0.passthrough }

            if !claimsUnstaked.isEmpty {
                claimUnstakedType = .claimUnstaked(passthroughs: claimsUnstaked.toSet())
            }

            switch (withdrawType, claimUnstakedType) {
            case (.some(let withdraw), .some(let claimUnstaked)):
                return .multiple(
                    [
                        stakingAction(type: .pending(withdraw)),
                        stakingAction(type: .pending(claimUnstaked)),
                    ]
                )
            case (.some(let withdraw), .none):
                return .single(stakingAction(type: .pending(withdraw)))
            case (.none, .some(let claimUnstaked)):
                return .single(stakingAction(type: .pending(claimUnstaked)))
            default:
                throw PendingActionMapperError.notFound("Pending withdraw/claimUnstaked action")
            }
        case .locked:
            guard let unlockLockedAction = balance.actions.first(where: { $0.type == .unlockLocked }) else {
                throw PendingActionMapperError.notFound("Pending unlockLocked action")
            }

            let unlockLocked: StakingAction = stakingAction(
                type: .pending(.unlockLocked(passthrough: unlockLockedAction.passthrough))
            )

            if let voteLockedAction = balance.actions.first(where: { $0.type == .voteLocked }) {
                let voteLocked = stakingAction(
                    type: .pending(.voteLocked(passthrough: voteLockedAction.passthrough))
                )

                return .multiple([unlockLocked, voteLocked])
            }

            return .single(unlockLocked)
        case .rewards:
            guard let claimRewardsAction = balance.actions.first(where: { $0.type == .claimRewards }) else {
                throw PendingActionMapperError.notFound("Pending claimRewards action")
            }

            let claimRewards = stakingAction(
                type: .pending(.claimRewards(passthrough: claimRewardsAction.passthrough))
            )

            if let restakeRewardsAction = balance.actions.first(where: { $0.type == .restakeRewards }) {
                let restakeRewards = stakingAction(
                    type: .pending(.restakeRewards(passthrough: restakeRewardsAction.passthrough))
                )

                return .multiple([claimRewards, restakeRewards])
            }

            return .single(claimRewards)
        }
    }

    private func stakingAction(type: StakingAction.ActionType) -> StakingAction {
        StakingAction(amount: balance.amount, validatorType: balance.validatorType, type: type)
    }
}

enum PendingActionMapperError: LocalizedError {
    case notSupported
    case notFound(String)

    var errorDescription: String? {
        switch self {
        case .notSupported:
            return "Action not supported"
        case .notFound(let string):
            return "The necessary data \(string) not found"
        }
    }
}

extension PendingActionMapper {
    enum Action {
        case single(UnstakingModel.Action)
        case multiple([UnstakingModel.Action])
    }
}
