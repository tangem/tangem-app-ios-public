//
//  TokenPriceFormatter.swift
//  Tangem
//
//  Created by skibinalexander on 21.05.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

protocol TokenPriceFormatter {
    func formatFiatBalance(_ value: Decimal?) -> String
}
