//
//  StakingManagerMock.swift
//  Tangem
//
//

import Foundation
import Combine
import TangemStaking

class StakingManagerMock: StakingManager {
    var state: StakingManagerState { .notEnabled }
    var statePublisher: AnyPublisher<StakingManagerState, Never> { .just(output: state) }
    var allowanceAddress: String? { nil }

    func updateState() async {}
    func estimateFee(action: StakingAction) async throws -> Decimal { .zero }
    func transaction(action: StakingAction) async throws -> StakingTransactionAction { .mock }
    func transactionDidSent(action: StakingAction) {}
}
