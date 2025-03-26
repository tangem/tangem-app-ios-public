//
//  NEARNetworkParams.Transaction.swift
//  BlockchainSdk
//
//

import Foundation

extension NEARNetworkParams {
    struct Transaction: Encodable {
        /// The payload string has a Base64 encoding.
        let payload: String

        func encode(to encoder: Encoder) throws {
            var container = encoder.unkeyedContainer()
            try container.encode(payload)
        }
    }
}
