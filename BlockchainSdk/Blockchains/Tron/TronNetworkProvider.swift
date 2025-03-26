//
//  TronNetworkProvider.swift
//  BlockchainSdk
//
//

import Foundation
import Combine

protocol TronNetworkProvider {
    func getAllowance(owner: String, spender: String, contractAddress: String) -> AnyPublisher<Decimal, Error>
}
