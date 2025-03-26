//
//  ReserveAmountRestrictable.swift
//  BlockchainSdk
//
//

import Foundation
import Combine

protocol ReserveAmountRestrictable {
    func validateReserveAmount(amount: Amount, addressType: ReserveAmountRestrictableAddressType) async throws
}

enum ReserveAmountRestrictableAddressType {
    /// The specified address will be used for verification
    case address(String)
    /// It will be considered as an absolute brand new address for verification
    case notCreated
}
