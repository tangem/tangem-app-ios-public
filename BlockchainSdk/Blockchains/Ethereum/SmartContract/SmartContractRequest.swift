//
//  SmartContractRequest.swift
//  BlockchainSdk
//
//

import Foundation

public protocol SmartContractRequest {
    var contractAddress: String { get }
    var encodedData: String { get }
}
