//
//  SmartContractMethodPrefixCreator.swift
//  TangemVisa
//
//

import Foundation
import CryptoSwift

struct SmartContractMethodPrefixCreator {
    func createPrefixForMethod(with name: String) -> String {
        String(name.sha3(.keccak256).prefix(8))
    }
}
