//
//  TezosExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct TezosExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? { nil }

    func url(transaction hash: String) -> URL? {
        return URL(string: "https://tzkt.io/tx/\(hash)")
    }

    func url(address: String, contractAddress: String?) -> URL? {
        return URL(string: "https://tzkt.io/\(address)")
    }
}
