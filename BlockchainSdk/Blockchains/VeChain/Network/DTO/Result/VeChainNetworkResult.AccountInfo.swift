//
//  VeChainNetworkResult.AccountInfo.swift
//  BlockchainSdk
//
//

import Foundation

extension VeChainNetworkResult {
    struct AccountInfo: Decodable {
        let balance: String
        let energy: String
        let hasCode: Bool
    }
}
