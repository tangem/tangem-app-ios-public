//
//  SubscanAPIParams.AccountInfo.swift
//  BlockchainSdk
//
//

import Foundation

extension SubscanAPIParams {
    struct AccountInfo: Encodable {
        /// The address of the account.
        let key: String
    }
}
