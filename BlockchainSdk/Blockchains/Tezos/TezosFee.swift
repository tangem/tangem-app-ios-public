//
//  TezosFees.swift
//  BlockchainSdk
//
//

import Foundation

enum TezosFee: Decimal {
    case transaction = 0.00142
    case reveal = 0.0013
    case allocation = 0.06425

    var mutezValue: String {
        let converted = rawValue * Blockchain.tezos(curve: .ed25519).decimalValue
        return converted.description
    }
}
