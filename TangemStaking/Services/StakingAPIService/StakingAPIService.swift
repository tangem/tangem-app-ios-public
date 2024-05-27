//
//  StakingAPIService.swift
//  TangemStaking
//
//  Created by Sergey Balashov on 24.05.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

protocol StakingAPIService {
    func enabledYields() async throws -> StakekitDTO.Yield.Enabled.Response
    func getYield(request: StakekitDTO.Yield.Info.Request) async throws -> StakekitDTO.Yield.Info.Response

    func enterAction(request: StakekitDTO.Actions.Enter.Request) async throws -> StakekitDTO.Actions.Enter.Response
}
