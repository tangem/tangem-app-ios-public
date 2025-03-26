//
//  RavencoinRawTransactionRequestModel.swift
//  BlockchainSdk
//
//

import Foundation

struct RavencoinRawTransaction {
    struct Request: Encodable {
        let rawtx: String
    }

    struct Response: Decodable {
        let txid: String
    }
}
