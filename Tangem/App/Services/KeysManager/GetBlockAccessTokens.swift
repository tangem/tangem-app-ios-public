//
//  GetBlockAccessTokens.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk

private typealias GetBlockCredentials = BlockchainSdkConfig.GetBlockCredentials

extension GetBlockCredentials {
    init(_ json: [String: [String: String]]) {
        var credentials: [GetBlockCredentials.Credential] = []

        Blockchain.allMainnetCases.forEach { blockchain in
            if let accessTokens = json[blockchain.codingKey] {
                GetBlockCredentials.TypeValue.allCases.forEach { type in
                    if let token = accessTokens[type.rawValue] {
                        credentials.append(.init(blockchain: blockchain, type: type, key: token))
                    }
                }
            }
        }

        self.init(credentials: credentials)
    }
}
