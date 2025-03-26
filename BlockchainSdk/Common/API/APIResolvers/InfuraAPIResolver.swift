//
//  InfuraAPIResolver.swift
//  BlockchainSdk
//
//

import Foundation

struct InfuraAPIResolver {
    let config: BlockchainSdkConfig

    func resolve(for blockchain: Blockchain) -> NodeInfo? {
        switch blockchain {
        case .ethereum:
            return .init(url: URL(string: "https://mainnet.infura.io/v3/\(config.infuraProjectId)")!)
        case .arbitrum:
            return .init(url: URL(string: "https://arbitrum-mainnet.infura.io/v3/\(config.infuraProjectId)")!)
        default:
            return nil
        }
    }
}
