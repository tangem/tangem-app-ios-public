//
//  ExchangeManagerError.swift
//  TangemExchange
//
//  Created by Sergey Balashov on 05.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public enum ExchangeManagerError: Error {
    case incorrectData
    case walletAddressNotFound
    case destinationNotFound
}
