//
//  SellCryptoRequest.swift
//  Tangem
//
//

import Foundation

struct SellCryptoRequest {
    let currencyCode: String
    let amount: Decimal
    let targetAddress: String
    let tag: String?
}
