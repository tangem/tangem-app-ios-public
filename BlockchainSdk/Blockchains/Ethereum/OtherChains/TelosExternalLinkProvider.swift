//
//  TelosExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct TelosExternalLinkProvider {
    private let isTestnet: Bool

    init(isTestnet: Bool) {
        self.isTestnet = isTestnet
    }
}

extension TelosExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? {
        return URL(string: "https://app.telos.net/testnet/developers")
    }

    func url(transaction hash: String) -> URL? {
        if isTestnet {
            return URL(string: "https://testnet.teloscan.io/tx/\(hash)")
        }

        return URL(string: "https://teloscan.io/tx/\(hash)")
    }

    func url(address: String, contractAddress: String?) -> URL? {
        if isTestnet {
            return URL(string: "https://testnet.teloscan.io/address/\(address)")
        }

        return URL(string: "https://teloscan.io/address/\(address)")
    }
}
