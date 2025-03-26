//
//  Playa3ullGamesExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct Playa3ullGamesExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? = nil

    private var baseExplorerUrl: String { "https://explorer.playa3ull.games" }

    func url(address: String, contractAddress: String?) -> URL? {
        return URL(string: "\(baseExplorerUrl)/address/\(address)")
    }

    func url(transaction hash: String) -> URL? {
        return URL(string: "\(baseExplorerUrl)/tx/\(hash)")
    }
}
