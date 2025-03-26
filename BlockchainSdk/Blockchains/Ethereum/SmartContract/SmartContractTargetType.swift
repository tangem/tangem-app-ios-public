//
//  SmartContractMethodType.swift
//  BlockchainSdk
//
//

import Foundation

protocol SmartContractTargetType {
    var contactAddress: String { get }
    var methodName: String { get }
    var parameters: [SmartContractMethodParameterType] { get }
}
