//
//  SwappingAvailabilityState.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 24.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public enum SwappingAvailabilityState {
    case idle
    case loading(_ type: SwappingManagerRefreshType)
    case preview(_ model: SwappingPreviewData)
    case available(_ model: SwappingAvailabilityModel)
    case requiredRefresh(occurredError: Error)
}
