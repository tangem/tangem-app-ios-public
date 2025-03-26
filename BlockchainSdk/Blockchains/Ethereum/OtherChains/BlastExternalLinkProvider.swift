//
//  BlastExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct BlastExternalLinkProvider {
    private let isTestnet: Bool

    private var baseExplorerUrl: String {
        if isTestnet {
            "https://sepolia.blastexplorer.io"
        } else {
            "https://blastscan.io"
        }
    }

    init(isTestnet: Bool) {
        self.isTestnet = isTestnet
    }
}

extension BlastExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? {
        URL(string: "https://docs.blast.io/tools/faucets")
    }

    func url(transaction hash: String) -> URL? {
        URL(string: "\(baseExplorerUrl)/tx/\(hash)")
    }

    func url(address: String, contractAddress: String?) -> URL? {
        URL(string: "\(baseExplorerUrl)/address/\(address)")
    }
}
