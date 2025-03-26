//
//  TotalBalanceFormattingOptions.swift
//  Tangem
//
//

import SwiftUI

struct TotalBalanceFormattingOptions {
    let integerPartFont: Font
    let fractionalPartFont: Font
    let integerPartColor: Color
    let fractionalPartColor: Color

    static var defaultOptions: TotalBalanceFormattingOptions {
        .init(
            integerPartFont: Fonts.Regular.title1,
            fractionalPartFont: Fonts.Bold.title3,
            integerPartColor: Colors.Text.primary1,
            fractionalPartColor: Colors.Text.primary1
        )
    }
}
