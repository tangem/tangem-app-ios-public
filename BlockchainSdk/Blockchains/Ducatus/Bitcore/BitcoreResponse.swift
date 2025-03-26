//
//  BitcoreResponse.swift
//  TangemKit
//
//

import Foundation

struct BitcoreBalance: Codable {
    var confirmed: Int64?
    var unconfirmed: Int64?
}

struct BitcoreUtxo: Codable {
    var mintTxid: String?
    var mintIndex: Int?
    var value: Int64?
    var script: String?
}

struct BitcoreSendResponse: Codable {
    var txid: String?
}
