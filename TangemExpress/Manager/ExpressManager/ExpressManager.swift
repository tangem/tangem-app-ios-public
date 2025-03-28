//
//  ExpressManager.swift
//  TangemExpress
//
//

import Foundation
import Combine

public protocol ExpressManager: Actor {
    func getPair() async -> ExpressManagerSwappingPair?
    func getAmount() async -> Decimal?
    func getApprovePolicy() -> ExpressApprovePolicy

    func updatePair(pair: ExpressManagerSwappingPair) async throws -> ExpressManagerState
    func updateAmount(amount: Decimal?, by source: ExpressProviderUpdateSource) async throws -> ExpressManagerState
    func update(approvePolicy: ExpressApprovePolicy) async throws -> ExpressManagerState

    func getAllProviders() -> [ExpressAvailableProvider]
    func getSelectedProvider() -> ExpressAvailableProvider?
    func updateSelectedProvider(provider: ExpressAvailableProvider) async throws -> ExpressManagerState

    func update(by source: ExpressProviderUpdateSource) async throws -> ExpressManagerState

    /// Use this method for CEX provider
    func requestData() async throws -> ExpressTransactionData
}
