//
//  MoonriverExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct MoonriverExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL = URL(string: "https://faucet.moonbeam.network")

    private let isTestnet: Bool

    private var baseExplorerUrl: String {
        if isTestnet {
            "https://moonbase.moonscan.io"
        } else {
            "https://moonriver.moonscan.io"
        }
    }

    init(isTestnet: Bool) {
        self.isTestnet = isTestnet
    }

    func url(address: String, contractAddress: String?) -> URL? {
        URL(string: "\(baseExplorerUrl)/address/\(address)")
    }

    func url(transaction hash: String) -> URL? {
        URL(string: "\(baseExplorerUrl)/tx/\(hash)")
    }
}
