//
//  CasperNetworkRequest.QueryBalance.swift
//  BlockchainSdk
//
//

import Foundation

extension CasperNetworkRequest {
    struct QueryBalance: Encodable {
        let purseIdentifier: PurseIdentifier
    }

    struct PurseIdentifier: Encodable {
        let mainPurseUnderPublicKey: String
    }
}
