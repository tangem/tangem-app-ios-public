//
//  RadiantUnspentOutput.swift
//  BlockchainSdk
//
//

import Foundation

struct RadiantUnspentOutput {
    let amount: UInt64
    let outputIndex: Int
    let hash: Data
    let outputScript: Data
}
