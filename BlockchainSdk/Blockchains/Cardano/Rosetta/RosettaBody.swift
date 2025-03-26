//
//  RosettaBody.swift
//  BlockchainSdk
//
//

import Foundation

struct RosettaAddressBody: Codable {
    let networkIdentifier: RosettaNetworkIdentifier
    let accountIdentifier: RosettaAccountIdentifier
}

struct RosettaSubmitBody: Codable {
    let networkIdentifier: RosettaNetworkIdentifier
    let signedTransaction: String
}
