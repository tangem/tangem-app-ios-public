//
//  TokenFinder.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk

protocol TokenFinder {
    func findToken(contractAddress: String, networkId: String) async throws -> TokenItem
}
