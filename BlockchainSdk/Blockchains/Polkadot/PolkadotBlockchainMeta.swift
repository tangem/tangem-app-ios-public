//
//  PolkadotBlockchainMeta.swift
//  BlockchainSdk
//
//

import Foundation

struct PolkadotBlockchainMeta {
    struct Era {
        let blockNumber: UInt64
        let period: UInt64
    }

    let specVersion: UInt32
    let transactionVersion: UInt32
    let genesisHash: String
    let blockHash: String
    let nonce: UInt64

    let era: Era?
}
