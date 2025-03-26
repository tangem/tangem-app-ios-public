//
//  CardanoFeeParameters.swift
//  BlockchainSdk
//
//

import Foundation

struct CardanoFeeParameters: FeeParameters {
    let adaValue: UInt64
    let change: UInt64
    let useMaxAmount: Bool
}
