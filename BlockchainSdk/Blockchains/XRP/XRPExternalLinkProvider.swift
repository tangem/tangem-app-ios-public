//
//  XRPExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct XRPExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? { nil }

    func url(transaction hash: String) -> URL? {
        return URL(string: "https://xrpscan.com/tx/\(hash)")
    }

    func url(address: String, contractAddress: String?) -> URL? {
        return URL(string: "https://xrpscan.com/account/\(address)")
    }
}
