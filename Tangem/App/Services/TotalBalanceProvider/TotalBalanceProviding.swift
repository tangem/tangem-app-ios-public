//
//  TotalBalanceProviding.swift
//  Tangem
//
//

import Combine

protocol TotalBalanceProviding {
    var totalBalancePublisher: AnyPublisher<LoadingValue<TotalBalance>, Never> { get }
}
