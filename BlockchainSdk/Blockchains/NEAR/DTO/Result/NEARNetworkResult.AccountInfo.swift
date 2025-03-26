//
//  NEARNetworkResult.AccountInfo.swift
//  BlockchainSdk
//
//

import Foundation

extension NEARNetworkResult {
    struct AccountInfo: Decodable {
        let amount: String
        let blockHash: String
        let blockHeight: UInt
        let codeHash: String
        let locked: String
        let storagePaidAt: UInt
        let storageUsage: UInt
    }
}
