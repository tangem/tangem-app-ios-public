//
//  CommonStakingAvailabilityProvider.swift
//  TangemStaking
//
//  Created by Sergey Balashov on 27.05.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

struct CommonStakingAvailabilityProvider: StakingAvailabilityProvider {
    private let repository: StakingRepository

    init(repository: StakingRepository) {
        self.repository = repository
    }

    func isAvailableForStaking(item: StakingTokenItem) -> Bool {
        repository.getYield(item: item) != nil
    }
}
