//
//  BitcoinScript.swift
//  BlockchainSdk
//
//

import Foundation
import TangemSdk

struct BitcoinScript {
    let chunks: [BitcoinScriptChunk]
    let data: Data
}
