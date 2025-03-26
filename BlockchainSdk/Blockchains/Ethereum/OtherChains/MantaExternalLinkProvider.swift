//
//  MantaExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct MantaExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL = URL(string: "https://pacific-info.testnet.manta.network/")

    private let isTestnet: Bool

    private var baseExplorerUrl: String {
        if isTestnet {
            "https://pacific-explorer.testnet.manta.network"
        } else {
            "https://pacific-explorer.manta.network"
        }
    }

    init(isTestnet: Bool) {
        self.isTestnet = isTestnet
    }

    func url(address: String, contractAddress: String?) -> URL? {
        return URL(string: "\(baseExplorerUrl)/address/\(address)")
    }

    func url(transaction hash: String) -> URL? {
        return URL(string: "\(baseExplorerUrl)/tx/\(hash)")
    }
}
