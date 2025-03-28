//
//  BalanceFormattingOptions.swift
//  Tangem
//
//

import Foundation

struct BalanceFormattingOptions: Hashable {
    var minFractionDigits: Int
    var maxFractionDigits: Int
    var formatEpsilonAsLowestRepresentableValue: Bool
    var roundingType: AmountRoundingType?

    static var defaultFiatFormattingOptions: BalanceFormattingOptions {
        .init(
            minFractionDigits: 2,
            maxFractionDigits: 2,
            formatEpsilonAsLowestRepresentableValue: true,
            roundingType: .default(roundingMode: .plain, scale: 2)
        )
    }

    static var defaultCryptoFormattingOptions: BalanceFormattingOptions {
        .init(
            minFractionDigits: 2,
            maxFractionDigits: 8,
            formatEpsilonAsLowestRepresentableValue: false,
            roundingType: .default(roundingMode: .down, scale: 8)
        )
    }

    static var defaultCryptoFeeFormattingOptions: BalanceFormattingOptions {
        var options = Self.defaultCryptoFormattingOptions
        options.maxFractionDigits = 6

        return options
    }

    static var sendCryptoFeeFormattingOptions: BalanceFormattingOptions {
        var options = Self.defaultCryptoFeeFormattingOptions
        options.roundingType = .default(roundingMode: .up, scale: 6)

        return options
    }
}
