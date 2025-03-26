//
//  RavencoinWalletUTXO.swift
//  BlockchainSdk
//
//

import Foundation

struct RavencoinWalletUTXO: Decodable {
    let txid: String
    let vout: Int
    let satoshis: UInt64
    let scriptPubKey: String
}
