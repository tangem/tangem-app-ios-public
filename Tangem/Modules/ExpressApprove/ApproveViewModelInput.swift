//
//  ApproveViewModelInput.swift
//  Tangem
//
//

import Foundation
import Combine
import BlockchainSdk

protocol ApproveViewModelInput {
    var approveFeeValue: LoadingValue<Fee> { get }
    var approveFeeValuePublisher: AnyPublisher<LoadingValue<Fee>, Never> { get }

    func updateApprovePolicy(policy: ApprovePolicy)
    func sendApproveTransaction() async throws
}
