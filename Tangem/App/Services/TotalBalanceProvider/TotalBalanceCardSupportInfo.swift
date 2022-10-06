//
//  TotalBalanceSupportData.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 06.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

struct TotalBalanceCardSupportInfo {
    let cardBatchId: String
    let cardNumberHash: String

    init(cardBatchId: String, cardNumber: String) {
        self.cardBatchId = cardBatchId
        self.cardNumberHash = cardNumber.sha256Hash.hexString
    }
}
