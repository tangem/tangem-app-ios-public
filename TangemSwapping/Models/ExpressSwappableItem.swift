//
//  ExpressSwappableItem.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 08.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

public struct ExpressSwappableItem {
    public let source: ExpressCurrency
    public let destination: ExpressCurrency
    public let amount: Decimal
    public let provider: ExpressProvider
}
