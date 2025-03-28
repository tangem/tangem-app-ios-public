//
//  RentProvider.swift
//  BlockchainSdk
//
//

import Foundation
import Combine

public protocol RentProvider {
    func minimalBalanceForRentExemption() -> AnyPublisher<Amount, Error>
    func rentAmount() -> AnyPublisher<Amount, Error>
}
