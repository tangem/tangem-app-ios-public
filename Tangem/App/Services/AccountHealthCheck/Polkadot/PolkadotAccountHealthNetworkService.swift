//
//  PolkadotAccountHealthNetworkService.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk

protocol PolkadotAccountHealthNetworkService {
    func getAccountHealthInfo(account: String) async throws -> PolkadotAccountHealthInfo
    func getTransactionsList(account: String, afterId: Int) async throws -> [PolkadotTransaction]
    func getTransactionDetails(hash: String) async throws -> PolkadotTransactionDetails
}
