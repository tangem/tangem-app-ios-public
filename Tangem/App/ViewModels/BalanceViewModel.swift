//
//  BalanceViewModel.swift
//  Tangem
//
//

import Foundation

struct BalanceViewModel {
    let hasTransactionInProgress: Bool
    let state: WalletModel.State
    let name: String
    let fiatBalance: String
    let balance: String
    let tokenBalanceViewModel: TokenBalanceViewModel?

    // .truncationMode(.middle) in iOS13 produces glitches with empty string transition
    var balanceFormatted: String {
        balance.isEmpty ? " " : balance
    }
}
