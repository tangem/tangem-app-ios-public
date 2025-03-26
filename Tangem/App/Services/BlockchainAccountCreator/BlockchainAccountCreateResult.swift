//
//  BlockchainAccountCreateResult.swift
//  Tangem
//
//

import Foundation

struct BlockchainAccountCreateResult: Decodable {
    struct AccountData: Decodable {
        let accountId: String
        let walletPublicKey: String
    }

    let data: AccountData
}
