//
//  AptosFeeParams.swift
//  BlockchainSdk
//
//

import Foundation

struct AptosFeeParams: FeeParameters {
    let gasUnitPrice: UInt64
    let maxGasAmount: UInt64
}
