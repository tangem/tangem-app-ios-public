//
//  CardanoAPIResolver.swift
//  BlockchainSdk
//
//

import Foundation

struct CardanoAPIResolver {
    func resolve(providerType: NetworkProviderType, blockchain: Blockchain) -> NodeInfo? {
        guard case .cardano = blockchain else {
            return nil
        }

        switch providerType {
        case .adalite:
            return .init(url: URL(string: "https://explorer2.adalite.io")!)
        case .tangemRosetta:
            return .init(url: URL(string: "https://ada.tangem.com")!)
        default:
            return nil
        }
    }
}
