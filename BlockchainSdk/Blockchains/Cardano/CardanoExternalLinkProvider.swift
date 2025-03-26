//
//  CardanoExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct CardanoExternalLinkProvider {}

extension CardanoExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? { nil }

    func url(transaction hash: String) -> URL? {
        return URL(string: "https://www.blockchair.com/cardano/transaction/\(hash)")
    }

    func url(address: String, contractAddress: String?) -> URL? {
        return URL(string: "https://www.blockchair.com/cardano/address/\(address)")
    }
}
