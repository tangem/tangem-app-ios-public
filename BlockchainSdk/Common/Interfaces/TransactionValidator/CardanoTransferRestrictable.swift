//
//  CardanoTransferRestrictable.swift
//  BlockchainSdk
//
//

import Foundation

protocol CardanoTransferRestrictable {
    func validateCardanoTransfer(amount: Amount, fee: Fee) throws
}
