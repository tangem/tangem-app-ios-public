//
//  TONExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct TONExternalLinkProvider {
    private let isTestnet: Bool

    init(isTestnet: Bool) {
        self.isTestnet = isTestnet
    }
}

extension TONExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? { nil }

    func url(transaction hash: String) -> URL? {
        let prefix = isTestnet ? "testnet." : ""
        return URL(string: "https://\(prefix)tonviewer.com/transaction/\(hash)")
    }

    func url(address: String, contractAddress: String?) -> URL? {
        let prefix = isTestnet ? "testnet." : ""
        return URL(string: "https://\(prefix)tonviewer.com/\(address)")
    }
}
