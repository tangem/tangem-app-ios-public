//
//  BlockBookTarget.AddressRequestParameters.FilterType+.swift
//  BlockchainSdk
//
//

import Foundation

extension BlockBookTarget.AddressRequestParameters.FilterType {
    init(amountType: Amount.AmountType) {
        switch amountType {
        case .coin, .reserve, .feeResource:
            self = .coin
        case .token(let token):
            self = .contract(token.contractAddress)
        }
    }
}
