//
//  ExchangeAvailabilityState.swift
//  TangemExchange
//
//  Created by Sergey Balashov on 24.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public enum ExchangeAvailabilityState {
    case loading
    case available
    case requiredPermission
    case requiredRefresh(occuredError: Error)
}
