//
//  KoinosExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct KoinosExternalLinkProvider {
    private let isTestnet: Bool

    private var baseExplorerUrl: String {
        if isTestnet {
            "https://harbinger.koinosblocks.com"
        } else {
            "https://koinosblocks.com"
        }
    }

    init(isTestnet: Bool) {
        self.isTestnet = isTestnet
    }
}

extension KoinosExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? {
        nil
    }

    func url(transaction hash: String) -> URL? {
        URL(string: "\(baseExplorerUrl)/tx/\(hash)")
    }

    func url(address: String, contractAddress: String?) -> URL? {
        URL(string: "\(baseExplorerUrl)/address/\(address)")
    }
}
