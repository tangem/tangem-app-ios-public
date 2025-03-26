//
//  TONTransactionParams.swift
//  BlockchainSdk
//
//

import Foundation
import CryptoKit
import WalletCore

public struct TONTransactionParams: TransactionParams {
    var memo: String

    public init(memo: String) {
        self.memo = memo
    }
}
