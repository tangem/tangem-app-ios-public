//
//  SwappingQuoteDataModel.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 13.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public struct SwappingQuoteDataModel {
    /// WEI
    public let toTokenAmount: Decimal
    public let fromTokenAmount: Decimal

    public init(sourceAmount: String, quoteData: QuoteData) throws {
        guard let fromTokenAmount = Decimal(string: sourceAmount),
              let toTokenAmount = Decimal(string: quoteData.toAmount) else {
            throw OneInchSwappingProvider.Errors.incorrectDataFormat
        }

        self.toTokenAmount = toTokenAmount
        self.fromTokenAmount = fromTokenAmount
    }
}
