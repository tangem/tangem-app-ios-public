//
//  TotalBalanceProviderMock.swift
//  Tangem
//
//  Created by Sergey Balashov on 27.03.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Combine

struct TotalBalanceProviderMock: TotalBalanceProviding {
    var totalBalancePublisher: AnyPublisher<LoadingValue<TotalBalance>, Never> {
        Empty().eraseToAnyPublisher()
    }
}
