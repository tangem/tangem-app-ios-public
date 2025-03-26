//
//  NEARTransactionParams.swift
//  BlockchainSdk
//
//

import Foundation

struct NEARTransactionParams: TransactionParams {
    let publicKey: Wallet.PublicKey
    let currentNonce: UInt
    let recentBlockHash: String
}
