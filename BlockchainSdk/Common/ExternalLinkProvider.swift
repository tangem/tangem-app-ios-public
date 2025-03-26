//
//  BlockchainExplorerProvider.swift
//  BlockchainSdk
//
//

import Foundation

public protocol ExternalLinkProvider {
    var testnetFaucetURL: URL? { get }

    func url(address: String, contractAddress: String?) -> URL?
    func url(transaction hash: String) -> URL?
}
