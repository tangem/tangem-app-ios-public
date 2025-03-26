//
//  BitcoinFeeParameters.swift
//  BlockchainSdk
//
//

import Foundation

public struct BitcoinFeeParameters: FeeParameters {
    /// Fee rate per byte in satoshi
    public let rate: Int

    init(rate: Int) {
        self.rate = rate
    }
}
