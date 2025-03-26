//
//  DogecoinExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct DogecoinExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? { nil }

    func url(transaction hash: String) -> URL? {
        return URL(string: "https://blockchair.com/dogecoin/transaction/\(hash)")
    }

    func url(address: String, contractAddress: String?) -> URL? {
        return URL(string: "https://blockchair.com/dogecoin/address/\(address)")
    }
}
