//
//  FilecoinSignedMessage.swift
//  BlockchainSdk
//
//

import Foundation

struct FilecoinSignedMessage: Codable, Equatable {
    struct Signature: Codable, Equatable {
        let type: Int
        let data: String

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case data = "Data"
        }
    }

    let message: FilecoinMessage
    let signature: Signature

    enum CodingKeys: String, CodingKey {
        case message = "Message"
        case signature = "Signature"
    }
}
