//
//  ExchangeAvailabilityState.swift
//  TangemExchange
//
//  Created by Sergey Balashov on 24.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public enum ExchangeAvailabilityState {
    case idle
    case loading(_ type: ExchangeManagerRefreshType)
    case preview(_ model: PreviewSwappingDataModel)
    case available(_ model: SwappingResultDataModel, info: ExchangeTransactionDataModel)
    case requiredRefresh(occurredError: Error)
}
