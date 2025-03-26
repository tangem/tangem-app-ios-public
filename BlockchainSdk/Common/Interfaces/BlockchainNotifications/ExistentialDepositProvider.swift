//
//  ExistentialDepositProvider.swift
//  BlockchainSdk
//
//

import Foundation

public protocol ExistentialDepositProvider {
    var existentialDeposit: Amount { get }
}
