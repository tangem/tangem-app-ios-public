//
//  AllowanceERC20TokenMethod.swift
//  BlockchainSdk
//
//

import Foundation

/// https://eips.ethereum.org/EIPS/eip-20#allowance
public struct AllowanceERC20TokenMethod {
    let spender: String
    let owner: String

    public init(owner: String, spender: String) {
        self.owner = owner
        self.spender = spender
    }
}

// MARK: - SmartContractMethod

extension AllowanceERC20TokenMethod: SmartContractMethod {
    public var prefix: String { "0xdd62ed3e" }

    public var data: Data {
        let prefixData = Data(hexString: prefix)
        let ownerData = Data(hexString: owner).leadingZeroPadding(toLength: 32)
        let spenderData = Data(hexString: spender).leadingZeroPadding(toLength: 32)

        return prefixData + ownerData + spenderData
    }
}
