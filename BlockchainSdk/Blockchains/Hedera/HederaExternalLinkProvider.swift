//
//  HederaExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct HederaExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? {
        return URL(string: "https://portal.hedera.com/")
    }

    private let isTestnet: Bool

    private var networkPath: String {
        return isTestnet ? "testnet" : "mainnet"
    }

    init(isTestnet: Bool) {
        self.isTestnet = isTestnet
    }

    func url(address: String, contractAddress: String?) -> URL? {
        return URL(string: "https://hashscan.io/\(networkPath)/account/\(address)")
    }

    func url(transaction hash: String) -> URL? {
        return URL(string: "https://hashscan.io/\(networkPath)/transaction/\(hash)")
    }
}
