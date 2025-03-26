//
//  DucatusExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct DucatusExternalLinkProvider {}

extension DucatusExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? { nil }

    func url(transaction hash: String) -> URL? {
        return URL(string: "https://insight.ducatus.io/#/DUC/mainnet/tx/\(hash)")
    }

    func url(address: String, contractAddress: String?) -> URL? {
        return URL(string: "https://insight.ducatus.io/#/DUC/mainnet/address/\(address)")
    }
}
