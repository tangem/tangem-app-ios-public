//
//  MainHeaderBalanceFormatter.swift
//  Tangem
//
//

import Foundation

protocol MainHeaderBalanceFormatter {
    func formatBalance(balance: Decimal?, currencyCode: String) -> AttributedString
}

struct CommonMainHeaderBalanceFormatter: MainHeaderBalanceFormatter {
    func formatBalance(balance: Decimal?, currencyCode: String) -> AttributedString {
        let balanceFormatter = BalanceFormatter()
        let formattedBalance = balanceFormatter.formatFiatBalance(balance)
        return balanceFormatter.formatAttributedTotalBalance(fiatBalance: formattedBalance, formattingOptions: .defaultOptions)
    }
}

struct VisaMainHeaderBalanceFormatter: MainHeaderBalanceFormatter {
    func formatBalance(balance: Decimal?, currencyCode: String) -> AttributedString {
        let balanceFormatter = BalanceFormatter()
        guard let balance else {
            return balanceFormatter.formatAttributedTotalBalance(fiatBalance: BalanceFormatter.defaultEmptyBalanceString, formattingOptions: .defaultOptions)
        }
        let formattedBalance = balanceFormatter.formatCryptoBalance(balance, currencyCode: currencyCode)
        return balanceFormatter.formatAttributedTotalBalance(fiatBalance: formattedBalance, formattingOptions: .defaultOptions)
    }
}
