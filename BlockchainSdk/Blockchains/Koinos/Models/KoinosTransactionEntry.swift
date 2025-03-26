//
//  KoinosTransactionEntry.swift
//  BlockchainSdk
//
//

import Foundation

struct KoinosTransactionEntry {
    let id: String
    let sequenceNum: UInt64
    let payerAddress: String
    let rcLimit: UInt64
    let rcUsed: UInt64
    let event: KoinosTransferEvent
}
