//
//  ICPExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct ICPExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? {
        return nil
    }

    private let baseExplorerURL = URL(string: "https://dashboard.internetcomputer.org")

    func url(address: String, contractAddress: String?) -> URL? {
        baseExplorerURL?.appendingPathComponent("account").appendingPathComponent(address)
    }

    func url(transaction hash: String) -> URL? {
        baseExplorerURL?.appendingPathComponent("transaction").appendingPathComponent(hash)
    }
}
