//
//  Walletmanager.swift
//  blockchainSdk
//
//  Created by Alexander Osokin on 04.12.2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation
import TangemSdk

public protocol WalletManager {
    var wallet: Wallet {get}
    var blockchain: Blockchain {get}
    func update()
}

protocol TransactionBuilder {
    func getEstimateSize(for transaction: Transaction) -> Int
}

protocol TransactionSender {
    func send(_ transaction: Transaction, signer: TransactionSigner)
}

protocol TransactionSigner {
    
}

protocol FeeProvider {
    func getFee(amount: Amount, source: String, destination: String) -> [Amount]?
}
