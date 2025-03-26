//
//  BitcoinAddress.swift
//  BlockchainSdk
//
//

import Foundation

struct BitcoinScriptAddress: Address {
    let script: BitcoinScript
    let value: String
    let publicKey: Wallet.PublicKey
    let type: AddressType
    var localizedName: String { type.defaultLocalizedName }

    init(script: BitcoinScript, value: String, publicKey: Wallet.PublicKey, type: AddressType) {
        self.script = script
        self.value = value
        self.publicKey = publicKey
        self.type = type
    }
}
