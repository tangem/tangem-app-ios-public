//
//  SendFeeSummaryViewModel.swift
//  Tangem
//
//  Created by Andrey Chukavin on 07.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

class SendFeeSummaryViewModel: Identifiable {
    let fee: String

    init(fee: String) {
        self.fee = fee
    }
}
