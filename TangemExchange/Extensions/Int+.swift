//
//  Int+.swift
//  TangemExchange
//
//  Created by Sergey Balashov on 05.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

extension Int {
    var asLongNumber: Int {
        (0 ..< self).reduce(1) { number, _ in number * 10 }
    }

    var decimal: Decimal {
        Decimal(integerLiteral: self)
    }
}
