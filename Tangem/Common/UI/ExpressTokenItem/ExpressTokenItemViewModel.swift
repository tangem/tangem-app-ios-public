//
//  ExpressTokenItemViewModel.swift
//  Tangem
//
//

import Foundation

struct ExpressTokenItemViewModel: Identifiable {
    let id: Int
    let tokenIconInfo: TokenIconInfo
    let name: String
    let symbol: String
    let balance: String
    let fiatBalance: String
    let isDisable: Bool
    let itemDidTap: () -> Void

    init(
        id: Int,
        tokenIconInfo: TokenIconInfo,
        name: String,
        symbol: String,
        balance: String,
        fiatBalance: String,
        isDisable: Bool,
        itemDidTap: @escaping () -> Void
    ) {
        self.id = id
        self.tokenIconInfo = tokenIconInfo
        self.name = name
        self.symbol = symbol
        self.balance = balance
        self.fiatBalance = fiatBalance
        self.isDisable = isDisable
        self.itemDidTap = itemDidTap
    }
}
