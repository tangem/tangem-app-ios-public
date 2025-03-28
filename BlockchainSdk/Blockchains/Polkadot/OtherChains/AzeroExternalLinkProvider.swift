//
//  AzeroExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct AzeroExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? {
        return URL(string: "https://faucet.test.azero.dev")
    }

    func url(transaction hash: String) -> URL? {
        return URL(string: "https://alephzero.subscan.io/extrinsic/\(hash)")
    }

    func url(address: String, contractAddress: String?) -> URL? {
        return URL(string: "https://alephzero.subscan.io/account/\(address)")
    }
}
