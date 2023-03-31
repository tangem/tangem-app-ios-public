//
//  Currency+Mock.swift
//  Tangem
//
//  Created by Sergey Balashov on 06.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import TangemSwapping

extension Currency {
    static let mock = Currency(
        id: "ethereum",
        blockchain: .ethereum,
        name: "ethereum",
        symbol: "ETH",
        decimalCount: 18,
        currencyType: .coin
    )
}
