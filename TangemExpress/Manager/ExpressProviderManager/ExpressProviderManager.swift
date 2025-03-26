//
//  ExpressProviderManager.swift
//  TangemExpress
//
//

import Foundation

public protocol ExpressProviderManager: Actor {
    func getState() -> ExpressProviderManagerState

    func update(request: ExpressManagerSwappingPairRequest, approvePolicy: ExpressApprovePolicy) async
    func sendData(request: ExpressManagerSwappingPairRequest) async throws -> ExpressTransactionData
}
