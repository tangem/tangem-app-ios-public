//
//  GnosisExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct GnosisExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? { nil }

    func url(transaction hash: String) -> URL? {
        return URL(string: "https://gnosis.blockscout.com/tx/\(hash)")
    }

    func url(address: String, contractAddress: String?) -> URL? {
        return URL(string: "https://gnosis.blockscout.com/address/\(address)")
    }
}
