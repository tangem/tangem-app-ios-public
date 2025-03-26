//
//  BitcoinTransactionFeeCalculator.swift
//  BlockchainSdk
//
//

import Foundation

public protocol BitcoinTransactionFeeCalculator {
    func calculateFee(satoshiPerByte: Int, amount: Amount, destination: String) -> Fee
}
