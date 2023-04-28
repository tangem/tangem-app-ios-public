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
    /// WEI
    public let fromTokenAmount: Decimal
    public let estimatedGas: Int

    public init(quoteData: QuoteData) throws {
        guard let toTokenAmount = Decimal(string: quoteData.toTokenAmount),
              let fromTokenAmount = Decimal(string: quoteData.fromTokenAmount) else {
            throw OneInchSwappingProvider.Errors.incorrectDataFormat
        }

        self.toTokenAmount = toTokenAmount
        self.fromTokenAmount = fromTokenAmount
        estimatedGas = quoteData.estimatedGas
    }
}
