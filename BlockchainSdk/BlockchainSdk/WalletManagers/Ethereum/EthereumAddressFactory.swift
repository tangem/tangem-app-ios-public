//
//  EthereumAddressFactory.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 13.12.2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

class EthereumAddressFactory {
    func makeAddress(from walletPublicKey: Data) -> String {
        //skip secp256k1 prefix
        let keccak = walletPublicKey[1...].sha3(.keccak256)
        let addressBytes = keccak[12...]
        let hexAddressBytes = addressBytes.toHexString()
        return "0x" + hexAddressBytes
    }
}
