//
//  SendWalletSummaryViewModel.swift
//  Tangem
//
//  Created by Andrey Chukavin on 07.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

class SendWalletSummaryViewModel: Identifiable {
    let walletName: String
    let totalBalance: String

    init(walletName: String, totalBalance: String) {
        self.walletName = walletName
        self.totalBalance = totalBalance
    }
}
