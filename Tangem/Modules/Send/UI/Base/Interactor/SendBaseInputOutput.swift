//
//  SendBaseInputOutput.swift
//  Tangem
//
//

import Foundation
import Combine
import BlockchainSdk

protocol SendBaseInput: AnyObject {
    var actionInProcessing: AnyPublisher<Bool, Never> { get }
}

protocol SendBaseOutput: AnyObject {
    func performAction() async throws -> TransactionDispatcherResult
}
