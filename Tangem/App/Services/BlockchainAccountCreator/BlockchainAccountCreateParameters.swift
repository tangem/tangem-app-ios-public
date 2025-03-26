//
//  BlockchainAccountCreateParameters.swift
//  Tangem
//
//

import Foundation

struct BlockchainAccountCreateParameters: Encodable {
    let networkId: String
    let walletPublicKey: String
}
