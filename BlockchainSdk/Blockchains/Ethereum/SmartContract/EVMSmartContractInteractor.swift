//
//  EVMSmartContractInteractor.swift
//  BlockchainSdk
//
//

import Foundation
import Combine

public protocol EVMSmartContractInteractor {
    func ethCall<Request: SmartContractRequest>(request: Request) -> AnyPublisher<String, Error>
}
