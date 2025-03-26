//
//  AlgorandResponse+Error.swift
//  BlockchainSdk
//
//

import Foundation

extension AlgorandResponse {
    struct Error: Decodable, LocalizedError {
        let message: String

        var errorDescription: String? {
            message
        }
    }
}
