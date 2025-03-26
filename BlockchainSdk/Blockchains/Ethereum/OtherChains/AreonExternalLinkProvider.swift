//
//  AreonExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct AreonExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL = URL(string: "https://faucet.areon.network/")

    private var baseExplorerUrl: String { "https://areonscan.com" }

    func url(address: String, contractAddress: String?) -> URL? {
        return URL(string: "\(baseExplorerUrl)/address/\(address)")
    }

    func url(transaction hash: String) -> URL? {
        return URL(string: "\(baseExplorerUrl)/tx/\(hash)")
    }
}
