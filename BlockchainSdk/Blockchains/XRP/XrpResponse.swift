//
//  XrpResponse.swift
//  BlockchainSdk
//
//

import Foundation

struct XRPFeeResponse {
    let min: Decimal
    let normal: Decimal
    let max: Decimal
}

struct XrpInfoResponse {
    let balance: Decimal
    let sequence: Int
    let unconfirmedBalance: Decimal
    let reserve: Decimal
}
