//
//  BitcoinScriptAddressProvider.swift
//  BlockchainSdk
//
//

import Foundation

protocol BitcoinScriptAddressesProvider {
    func makeAddresses(publicKey: Wallet.PublicKey, pairPublicKey: Data) throws -> [BitcoinScriptAddress]
}
