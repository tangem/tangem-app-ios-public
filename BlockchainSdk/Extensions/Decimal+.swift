//
//  Decimal+.swift
//  BlockchainSdk
//
//

import Foundation

extension Decimal {
    func rounded(blockchain: Blockchain, roundingMode: RoundingMode = .down) -> Decimal {
        return rounded(scale: Int(blockchain.decimalCount), roundingMode: roundingMode)
    }
}
