//
//  WalletCoreABIEncoder.swift
//  BlockchainSdk
//
//

import Foundation
import WalletCore

struct WalletCoreABIEncoder: ABIEncoder {
    func encode(method: String, parameters: [SmartContractMethodParameterType]) -> String {
        let function = EthereumAbiFunction(name: method)
        for parameter in parameters {
            switch parameter {
            case .bytes(let data):
                function.addParamBytes(val: data, isOutput: false)
            }
        }

        let encodedData = EthereumAbi.encode(fn: function)

        return encodedData.hexString.addHexPrefix()
    }
}
