//
//  SendWalletInfo.swift
//  Tangem
//
//  Created by Andrey Chukavin on 24.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

struct SendWalletInfo {
    let walletName: String
    let balance: String
    let currencyId: String?
    let feeCurrencySymbol: String
    let feeCurrencyId: String
    let isFeeApproximate: Bool
    let tokenIconInfo: TokenIconInfo
    let cryptoIconURL: URL?
    let cryptoCurrencyCode: String
    let fiatIconURL: URL?
    let fiatCurrencyCode: String
    let amountFractionDigits: Int
}
