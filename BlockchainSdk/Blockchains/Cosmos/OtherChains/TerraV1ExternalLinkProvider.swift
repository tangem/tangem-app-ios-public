//
//  TerraV1ExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct TerraV1ExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? { nil }

    func url(transaction hash: String) -> URL? {
        return URL(string: "https://atomscan.com/terra/transactions/\(hash)")
    }

    func url(address: String, contractAddress: String?) -> URL? {
        return URL(string: "https://atomscan.com/terra/accounts/\(address)")
    }
}
