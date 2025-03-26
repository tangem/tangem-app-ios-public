//
//  FilecoinResponse.swift
//  BlockchainSdk
//
//

import Foundation

enum FilecoinResponse {
    struct GetActorInfo: Decodable {
        let balance: String
        let nonce: UInt64

        enum CodingKeys: String, CodingKey {
            case balance = "Balance"
            case nonce = "Nonce"
        }
    }

    struct GetEstimateMessageGas: Decodable {
        let gasLimit: Int64
        let gasFeeCap: String
        let gasPremium: String

        enum CodingKeys: String, CodingKey {
            case gasLimit = "GasLimit"
            case gasFeeCap = "GasFeeCap"
            case gasPremium = "GasPremium"
        }
    }

    struct SubmitTransaction: Decodable {
        let hash: String

        enum CodingKeys: String, CodingKey {
            case hash = "/"
        }
    }
}
