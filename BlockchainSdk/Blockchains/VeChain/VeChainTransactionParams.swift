//
//  VeChainTransactionParams.swift
//  BlockchainSdk
//
//

import Foundation

struct VeChainTransactionParams: TransactionParams {
    let publicKey: Wallet.PublicKey
    let lastBlockInfo: VeChainBlockInfo
    let nonce: UInt
}
