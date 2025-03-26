//
//  BitcoinScriptAddressProvider.swift
//  BlockchainSdk
//
//

import Foundation

protocol BitcoinScriptAddressProvider {
    func makeScriptAddress(from scriptHash: Data) throws -> String
}
