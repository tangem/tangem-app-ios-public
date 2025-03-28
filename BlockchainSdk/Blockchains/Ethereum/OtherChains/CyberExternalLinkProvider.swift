//
//  File.swift
//  BlockchainSdk
//
//

import Foundation

struct CyberExternalLinkProvider: ExternalLinkProvider {
    let testnetFaucetURL = URL(string: "https://faucet.quicknode.com/cyber/sepolia")
    private let baseExplorerUrl: String

    init(isTestnet: Bool) {
        baseExplorerUrl = isTestnet ? "https://testnet.cyberscan.co" : "https://cyberscan.co"
    }

    func url(address: String, contractAddress: String?) -> URL? {
        return URL(string: "\(baseExplorerUrl)/address/\(address)")
    }

    func url(transaction hash: String) -> URL? {
        return URL(string: "\(baseExplorerUrl)/tx/\(hash)")
    }
}
