//
//  SmartContractMethod.swift
//  BlockchainSdk
//
//

import Foundation

public protocol SmartContractMethod {
    var prefix: String { get }
    var data: Data { get }
}

public extension SmartContractMethod {
    /// The hex data with the `0x` prefix. Use it for send as `data` in the `eth_call`
    var encodedData: String {
        data.hexString.addHexPrefix()
    }
}
