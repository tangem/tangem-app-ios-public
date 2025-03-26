//
//  JoystreamExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct JoystreamExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? { nil }

    private let explorerBaseURL = "https://joystream.subscan.io"

    func url(transaction hash: String) -> URL? {
        return URL(string: "\(explorerBaseURL)/extrinsic/\(hash)")
    }

    func url(address: String, contractAddress: String?) -> URL? {
        return URL(string: "\(explorerBaseURL)/account/\(address)")
    }
}
