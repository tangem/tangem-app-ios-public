//
//  AwardToken.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk

struct AwardToken: Decodable {
    let id: String
    let name: String
    let symbol: String
    let networkId: String
    let contractAddress: String?
    let decimalCount: Int?
}

extension AwardToken {
    var storageToken: Token? {
        guard
            let contractAddress = contractAddress,
            let decimalCount = decimalCount
        else {
            return nil
        }

        return Token(
            name: name,
            symbol: symbol,
            contractAddress: contractAddress,
            decimalCount: decimalCount,
            id: id
        )
    }
}
