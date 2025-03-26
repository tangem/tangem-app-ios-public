//
//  WalletConnectSolanaSignMessageDTO.swift
//  Tangem
//
//

import Foundation

enum WalletConnectSolanaSignMessageDTO {
    struct Body: Codable {
        /// `Signature` is a signed message from response, encoded as base-58 string
        let signature: String
    }

    struct Response: Codable {
        let message: String
    }
}
