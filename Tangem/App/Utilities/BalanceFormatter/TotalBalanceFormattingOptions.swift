//
//  TotalBalanceFormattingOptions.swift
//  Tangem
//
//  Created by Andrew Son on 11/05/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import UIKit

struct TotalBalanceFormattingOptions {
    let integerPartFont: UIFont
    let fractionalPartFont: UIFont

    static var defaultOptions: TotalBalanceFormattingOptions {
        TotalBalanceFormattingOptions(
            integerPartFont: UIFont.systemFont(ofSize: 28, weight: .semibold),
            fractionalPartFont: UIFont.systemFont(ofSize: 20, weight: .semibold)
        )
    }
}
