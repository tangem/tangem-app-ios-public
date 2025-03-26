//
//  FilecoinMessage.swift
//  BlockchainSdk
//
//

import Foundation

struct FilecoinMessage: Codable, Equatable {
    let from: String
    let to: String
    let value: String
    let nonce: UInt64
    let gasLimit: UInt64?
    let gasFeeCap: String?
    let gasPremium: String?

    enum CodingKeys: String, CodingKey {
        case from = "From"
        case to = "To"
        case value = "Value"
        case nonce = "Nonce"
        case gasLimit = "GasLimit"
        case gasFeeCap = "GasFeeCap"
        case gasPremium = "GasPremium"
    }
}
