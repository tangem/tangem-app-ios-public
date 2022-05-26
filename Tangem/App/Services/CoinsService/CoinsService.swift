//
//  CommonCoinsService.swift
//  Tangem
//
//  Created by Alexander Osokin on 06.05.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import Combine
import Moya

protocol CoinsService {
    func loadCoins(requestModel: CoinsListRequestModel) -> AnyPublisher<[CoinModel], Error>
}

private struct CoinsServiceKey: InjectionKey {
    static var currentValue: CoinsService = CommonCoinsService()
}

extension InjectedValues {
    var coinsService: CoinsService {
        get { Self[CoinsServiceKey.self] }
        set { Self[CoinsServiceKey.self] = newValue }
    }
}
