//
//  SubscanAPIResult.ExtrinsicInfo.swift
//  BlockchainSdk
//
//

import Foundation

extension SubscanAPIResult {
    /// - Note: There are many more fields in this response, but we map only the required ones.
    struct ExtrinsicInfo: Decodable {
        struct Data: Decodable {
            let lifetime: Lifetime?
        }

        struct Lifetime: Decodable {
            let birth: Int
            let death: Int
        }

        let data: Data
    }
}
