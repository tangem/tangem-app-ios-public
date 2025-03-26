//
//  VeChainNetworkResult.ContractCall.swift
//  BlockchainSdk
//
//

import Foundation

extension VeChainNetworkResult {
    typealias ContractCall = [ContractCallPayload]

    /// - Note: Some fields (`events`, `transfers`, etc) aren't used and omitted.
    struct ContractCallPayload: Decodable {
        let gasUsed: Int
        let reverted: Bool
        /// Data returned from the called contract. Hex string.
        let data: String?
        /// VM invocation error. Empty string means no error has occurred.
        let vmError: String?
    }
}
