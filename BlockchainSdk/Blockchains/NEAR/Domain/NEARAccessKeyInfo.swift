//
//  NEARAccessKeyInfo.swift
//  BlockchainSdk
//
//

import Foundation

struct NEARAccessKeyInfo {
    let currentNonce: UInt
    let recentBlockHash: String
    let canBeUsedForTransfer: Bool
}
