//
//  ABIEncoder.swift
//  BlockchainSdk
//
//

import Foundation

protocol ABIEncoder {
    func encode(method: String, parameters: [SmartContractMethodParameterType]) -> String
}
