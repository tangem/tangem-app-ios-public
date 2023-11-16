//
//  ExpressManagerError.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 10.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

public enum ExpressManagerError: Error {
    case amountNotFound
    case contractAddressNotFound
    case availablePairNotFound
    case pairNotFound
    case selectedProviderNotFound
    case quotesNotFound
    case availableQuotesForProviderNotFound
}
