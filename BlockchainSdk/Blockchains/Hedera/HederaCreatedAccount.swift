//
//  HederaCreatedAccount.swift
//  BlockchainSdk
//
//

import Foundation

public struct HederaCreatedAccount: CreatedAccount {
    let accountId: String

    public init(accountId: String) {
        self.accountId = accountId
    }
}
