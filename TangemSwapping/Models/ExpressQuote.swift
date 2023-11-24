//
//  ExpressQuote.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 08.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

public struct ExpressQuote {
    public let expectAmount: Decimal
    public let minAmount: Decimal
    public let allowanceContract: String?
}
