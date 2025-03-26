//
//  TotalBalanceProviderMock.swift
//  Tangem
//
//

import Combine

struct TotalBalanceProviderMock: TotalBalanceProviding {
    var totalBalancePublisher: AnyPublisher<LoadingValue<TotalBalance>, Never> {
        Empty().eraseToAnyPublisher()
    }
}
