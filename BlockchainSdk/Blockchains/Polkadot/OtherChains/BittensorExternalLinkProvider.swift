//
//  BittensorExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct BittensorExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? { nil }

    private let explorerBaseURL = "https://x.taostats.io"

    func url(transaction hash: String) -> URL? {
        return URL(string: "\(explorerBaseURL)/extrinsic/\(hash)")
    }

    func url(address: String, contractAddress: String?) -> URL? {
        return URL(string: "\(explorerBaseURL)/account/\(address)")
    }
}
