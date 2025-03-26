//
//  MaximumAmountRestrictable.swift
//  BlockchainSdk
//
//

import Foundation

protocol MaximumAmountRestrictable {
    func validateMaximumAmount(amount: Amount, fee: Amount) throws
}
