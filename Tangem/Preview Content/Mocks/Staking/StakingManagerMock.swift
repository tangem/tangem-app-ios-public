//
//  StakingManagerMock.swift
//  Tangem
//
//  Created by Sergey Balashov on 28.05.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation
import Combine
import TangemStaking

class StakingManagerMock: StakingManager {
    var state: StakingManagerState { .notEnabled }
    var statePublisher: AnyPublisher<StakingManagerState, Never> { .just(output: state) }

    func updateState() async throws {}
    func transaction(action: StakingActionType) async throws -> StakingTransactionInfo { .mock }
}
