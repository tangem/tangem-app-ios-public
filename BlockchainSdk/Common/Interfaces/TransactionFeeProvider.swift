//
//  TransactionFeeProvider.swift
//  BlockchainSdk
//
//

import Foundation
import Combine

public protocol TransactionFeeProvider {
    var allowsFeeSelection: Bool { get }

    /// Use this method only for get a estimation fee
    /// Better use `getFee(amount:destination:)` for calculate the right fee for transaction
    func estimatedFee(amount: Amount) -> AnyPublisher<[Fee], Error>
    func getFee(amount: Amount, destination: String) -> AnyPublisher<[Fee], Error>
}

public extension TransactionFeeProvider where Self: WalletProvider {
    func estimatedFee(amount: Amount) -> AnyPublisher<[Fee], Error> {
        do {
            let estimationFeeAddress = try EstimationFeeAddressFactory().makeAddress(for: wallet.blockchain)
            return getFee(amount: amount, destination: estimationFeeAddress)
        } catch {
            return .anyFail(error: error)
        }
    }
}
