//
//  ExpressQuote.swift
//  TangemExpress
//
//

import Foundation

public struct ExpressQuote: Hashable {
    public var fromAmount: Decimal
    public let expectAmount: Decimal
    public let allowanceContract: String?

    public var rate: Decimal {
        if !fromAmount.isZero {
            return expectAmount / fromAmount
        }

        return 0
    }
}
