//
//  CommonWallet.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 04.12.2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

struct CurrencyWallet: Wallet, TransactionValidator {
    var config: WalletConfig
    var address: String
    var isTestnet: Bool = false
    var exploreUrl: String?
    var shareUrl: String?
    var pendingTransactions: [Transaction] = []
    var balances: [Amount] = []
    
    func validateTransaction(amount: Amount?, fee: Amount?) -> ValidationError? {
        return nil
    }
}
