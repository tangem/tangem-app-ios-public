//
//  ExpressTransactionStatus.swift
//  TangemExpress
//
//

import Foundation

public enum ExpressTransactionStatus: String, Codable {
    case unknown
    case created
    case exchangeTxSent = "exchange-tx-sent"
    case waiting
    case waitingTxHash = "waiting-tx-hash"
    case expired
    case confirming
    case exchanging
    case sending
    case finished
    case failed
    case txFailed = "tx-failed"
    case refunded
    case verifying
    case paused
}
