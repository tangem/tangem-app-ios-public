//
//  VisaBridgeInteractor.swift
//  TangemVisa
//
//

import Foundation
import Combine
import BlockchainSdk

public protocol VisaBridgeInteractor {
    var visaToken: Token { get }
    var accountAddress: String { get }
    func loadBalances() async throws -> VisaBalances
    func loadLimits() async throws -> VisaLimits
}
