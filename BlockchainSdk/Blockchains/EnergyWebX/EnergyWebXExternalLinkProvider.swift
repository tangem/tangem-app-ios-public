//
//  EnergyWebXExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct EnergyWebXExternalLinkProvider {
    private let baseExplorerUrl: String

    init(isTestnet: Bool) {
        baseExplorerUrl = isTestnet
            ? "https://energywebx-testnet.subscan.io"
            : "https://energywebx.subscan.io"
    }
}

extension EnergyWebXExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? {
        nil
    }

    func url(address: String, contractAddress: String?) -> URL? {
        URL(string: "\(baseExplorerUrl)/account/\(address)")
    }

    func url(transaction hash: String) -> URL? {
        URL(string: "\(baseExplorerUrl)/extrinsic/\(hash)")
    }
}
