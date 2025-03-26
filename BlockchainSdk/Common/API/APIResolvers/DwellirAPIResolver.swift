//
//  DwellirAPIResolver.swift
//  BlockchainSdk
//
//

import Foundation

struct DwellirAPIResolver {
    let config: BlockchainSdkConfig

    func resolve() -> NodeInfo? {
        guard let url = URL(string: "https://api-bittensor-mainnet.dwellir.com/\(config.bittensorDwellirKey)/") else {
            return nil
        }

        return .init(url: url)
    }
}
