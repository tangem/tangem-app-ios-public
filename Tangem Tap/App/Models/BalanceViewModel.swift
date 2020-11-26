//
//  BalanceViewModel.swift
//  Tangem Tap
//
//  Created by Alexander Osokin on 09.11.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation

struct BalanceViewModel {
    let isToken: Bool
    let hasTransactionInProgress: Bool
    let isLoading: Bool
    let loadingError: String?
    let name: String
    let fiatBalance: String
    let balance: String
    let secondaryBalance: String
    let secondaryFiatBalance: String
    let secondaryName: String
}
