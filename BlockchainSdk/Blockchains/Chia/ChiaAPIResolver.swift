//
//  ChiaAPIResolver.swift
//  BlockchainSdk
//
//

import Foundation

struct ChiaAPIResolver {
    let config: BlockchainSdkConfig

    func resolve(providerType: NetworkProviderType, blockchain: Blockchain) -> NodeInfo? {
        guard case .chia = blockchain else {
            return nil
        }

        let keysInfo = APIKeysInfoProvider(blockchain: blockchain, config: config).apiKeys(for: providerType)
        switch providerType {
        case .tangemChia:
            return .init(url: URL(string: "https://chia.tangem.com")!, keyInfo: keysInfo)
        case .fireAcademy:
            return .init(url: URL(string: "https://kraken.fireacademy.io/leaflet")!, keyInfo: keysInfo)
        default:
            return nil
        }
    }
}
