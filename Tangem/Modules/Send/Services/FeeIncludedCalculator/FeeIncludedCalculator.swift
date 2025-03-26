//
//  FeeIncludedCalculator.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk

protocol FeeIncludedCalculator {
    func shouldIncludeFee(_ fee: Fee, into amount: Amount) -> Bool
}
