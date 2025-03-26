//
//  Address.swift
//  BlockchainSdk
//
//

import Foundation

public protocol Address {
    var value: String { get }
    var localizedName: String { get }
    var type: AddressType { get }
    var publicKey: Wallet.PublicKey { get }
}
