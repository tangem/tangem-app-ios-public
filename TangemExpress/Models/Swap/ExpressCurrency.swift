//
//  ExpressCurrency.swift
//  TangemExpress
//
//

import Foundation

public struct ExpressCurrency: Hashable {
    public let contractAddress: String
    public let network: String

    public init(contractAddress: String, network: String) {
        self.contractAddress = contractAddress
        self.network = network
    }
}
