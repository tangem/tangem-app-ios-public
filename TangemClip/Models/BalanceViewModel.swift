//
//  BalanceViewModel.swift
//  TangemClip
//
//  Created by Andrew Son on 24/03/21.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation

struct BalanceViewModel {
    let isToken: Bool
    let state: WalletModel.State
    let hasTransactionInProgress: Bool
    let name: String
    let fiatBalance: String
    let balance: String
    let secondaryBalance: String
    let secondaryFiatBalance: String
    let secondaryName: String
}
