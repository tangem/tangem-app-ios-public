//
//  UserCurrenciesProviding.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 06.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import TangemSwapping

public protocol UserCurrenciesProviding {
    func getCurrencies(blockchain: SwappingBlockchain) async -> [Currency]
}
