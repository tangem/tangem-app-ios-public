//
//  SwappingAvailabilityState.swift
//  TangemExchange
//
//  Created by Sergey Balashov on 24.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public enum SwappingAvailabilityState {
    case idle
    case loading
    case available(swappingData: ExchangeSwapDataModel)
    case requiredPermission(approvedData: ExchangeApprovedDataModel)
    case requiredRefresh(occurredError: Error)
}
