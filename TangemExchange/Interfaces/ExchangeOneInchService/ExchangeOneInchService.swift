//
//  ExchangeOneInchService.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 03.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import ExchangeSdk

private struct ExchangeOneInchServiceKey: InjectionKey {
    static var currentValue: ExchangeServiceProtocol = ExchangeSdk.buildOneInchExchangeService(isDebug: false)
}

extension InjectedValues {
    var exchangeOneInchService: ExchangeServiceProtocol {
        get { Self[ExchangeOneInchServiceKey.self] }
        set { Self[ExchangeOneInchServiceKey.self] = newValue }
    }
}
