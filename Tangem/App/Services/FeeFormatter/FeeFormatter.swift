//
//  FeeFormatter.swift
//  Tangem
//
//  Created by Sergey Balashov on 18.05.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import TangemExpress

protocol FeeFormatter {
    func formattedFeeParts(fee: Decimal, currencySymbol: String, currencyId: String?, isFeeApproximate: Bool) -> FormattedFeeParts
    func format(fee: Decimal, currencySymbol: String, currencyId: String?, isFeeApproximate: Bool) -> String
}

extension FeeFormatter {
    func formattedFeeParts(fee: Decimal, tokenItem: TokenItem) -> FormattedFeeParts {
        formattedFeeParts(
            fee: fee,
            currencySymbol: tokenItem.currencySymbol,
            currencyId: tokenItem.currencyId,
            isFeeApproximate: tokenItem.blockchain.isFeeApproximate(for: tokenItem.amountType)
        )
    }

    func format(fee: Decimal, tokenItem: TokenItem) -> String {
        format(
            fee: fee,
            currencySymbol: tokenItem.currencySymbol,
            currencyId: tokenItem.currencyId,
            isFeeApproximate: tokenItem.blockchain.isFeeApproximate(for: tokenItem.amountType)
        )
    }
}
