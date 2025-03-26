//
//  TronFunction.swift
//  BlockchainSdk
//
//

import Foundation
import CryptoSwift

enum TronFunction: String {
    case transfer = "transfer(address,uint256)"
    case approve = "approve(address,uint256)"
    case allowance = "allowance(address,address)"
    case balanceOf = "balanceOf(address)"

    var prefix: Data {
        Data(rawValue.bytes).sha3(.keccak256).prefix(4)
    }
}
