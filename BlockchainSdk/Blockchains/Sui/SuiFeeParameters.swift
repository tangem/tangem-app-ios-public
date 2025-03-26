//
// SuiFeeParameters.swift
// BlockchainSdk
//
//

import Foundation

struct SuiFeeParameters: FeeParameters {
    let gasPrice: Decimal
    let gasBudget: Decimal
}
