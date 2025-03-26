//
//  VisaSmartContractRequest.swift
//  TangemVisa
//
//

import Foundation
import BlockchainSdk

struct VisaSmartContractRequest: SmartContractRequest {
    var contractAddress: String

    private let method: SmartContractMethod

    var encodedData: String { method.encodedData }

    init(contractAddress: String, method: SmartContractMethod) {
        self.contractAddress = contractAddress
        self.method = method
    }
}
