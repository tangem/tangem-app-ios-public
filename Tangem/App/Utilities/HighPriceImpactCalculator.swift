//
//  HighPriceImpactCalculator.swift
//  Tangem
//
//

import Foundation

struct HighPriceImpactCalculator {
    let sourceCurrencyId: String
    let destinationCurrencyId: String

    private let balanceConverter = BalanceConverter()
    // 10% in the 0..1 range
    private let highPriceImpactWarningLimit: Decimal = 0.1

    func isHighPriceImpact(converting sourceAmount: Decimal, to destinationAmount: Decimal) async throws -> Result {
        let sourceFiatAmount = try await balanceConverter.convertToFiat(sourceAmount, currencyId: sourceCurrencyId)
        let destinationFiatAmount = try await balanceConverter.convertToFiat(destinationAmount, currencyId: destinationCurrencyId)

        let lossesInPercents = (1 - destinationFiatAmount / sourceFiatAmount)

        let isHighPriceImpact = lossesInPercents >= highPriceImpactWarningLimit
        return Result(lossesInPercents: lossesInPercents, isHighPriceImpact: isHighPriceImpact)
    }
}

extension HighPriceImpactCalculator {
    struct Result {
        let lossesInPercents: Decimal
        let isHighPriceImpact: Bool
    }
}
