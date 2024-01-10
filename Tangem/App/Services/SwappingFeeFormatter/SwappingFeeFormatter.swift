//
//  SwappingFeeFormatter.swift
//  Tangem
//
//  Created by Sergey Balashov on 18.05.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import TangemSwapping

protocol SwappingFeeFormatter {
    func format(fee: Decimal, tokenItem: TokenItem) -> String
}
