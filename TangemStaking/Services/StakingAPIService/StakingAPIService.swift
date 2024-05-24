//
//  StakingAPIService.swift
//  TangemStaking
//
//  Created by Sergey Balashov on 24.05.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

protocol StakingAPIService {
    func getStakingInfo(wallet: StakingWallet) async throws -> StakingInfo
}
