//
//  RateAppService.swift
//  Tangem
//
//  Created by Andrey Fedorov on 12.12.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import Combine

protocol RateAppService {
    var rateAppAction: AnyPublisher<RateAppAction, Never> { get }

    func registerBalances(of walletModels: [WalletModel])
    func requestRateAppIfAvailable(with request: RateAppRequest)
    func respondToRateAppDialog(with response: RateAppResponse)
}
