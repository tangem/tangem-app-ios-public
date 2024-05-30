//
//  StakingRepository.swift
//  TangemStaking
//
//  Created by Sergey Balashov on 28.05.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

public protocol StakingRepository: Actor {
    func updateEnabledYields(withReload: Bool) async throws

    func getYield(id: String) async throws -> YieldInfo?
    func getYield(item: StakingTokenItem) async throws -> YieldInfo?
}
