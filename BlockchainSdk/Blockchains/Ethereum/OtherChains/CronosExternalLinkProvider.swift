//
//  CronosExternalLinkProvider.swift
//  BlockchainSdk
//
//

import Foundation

struct CronosExternalLinkProvider: ExternalLinkProvider {
    var testnetFaucetURL: URL? { nil }

    func url(transaction hash: String) -> URL? {
        return URL(string: "https://cronoscan.com/tx/\(hash)")
    }

    func url(address: String, contractAddress: String?) -> URL? {
        let baseUrl = "https://cronoscan.com/"

        if let contractAddress {
            let url = baseUrl + "token/\(contractAddress)?a=\(address)"
            return URL(string: url)
        }

        let url = baseUrl + "address/\(address)"
        return URL(string: url)
    }
}
