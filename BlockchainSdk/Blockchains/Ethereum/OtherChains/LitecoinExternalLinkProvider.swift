//
//  LitecoinExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct LitecoinExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? { nil }

    func url(transaction hash: String) -> URL? {
        return URL(string: "https://blockchair.com/litecoin/transaction/\(hash)")
    }

    func url(address: String, contractAddress: String?) -> URL? {
        return URL(string: "https://blockchair.com/litecoin/address/\(address)")
    }
}
