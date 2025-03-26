//
//  EthereumApiKeys.swift
//  BlockchainSdk
//
//

import Foundation

struct EthereumApiKeys {
    let infuraProjectId: String
    let nowNodesApiKey: String
    let getBlockApiKeys: [Blockchain: String]
    let quickNodeBscCredentials: BlockchainSdkConfig.QuickNodeCredentials
}
