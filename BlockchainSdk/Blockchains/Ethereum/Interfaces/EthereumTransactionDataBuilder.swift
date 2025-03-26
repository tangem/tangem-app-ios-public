//
//  EthereumTransactionDataBuilder.swift
//  BlockchainSdk
//
//

import Foundation
import BigInt
import Combine

public protocol EthereumTransactionDataBuilder {
    func buildForTokenTransfer(destination: String, amount: Amount) throws -> Data
    func buildForApprove(spender: String, amount: Decimal) throws -> Data
}
