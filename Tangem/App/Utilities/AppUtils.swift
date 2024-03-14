//
//  AppUtils.swift
//  Tangem
//
//  Created by Andrew Son on 31/08/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import TangemSdk

struct AppUtils {
    func canSignLongTransactions(tokenItem: TokenItem) -> Bool {
        guard NFCUtils.isPoorNfcQualityDevice else {
            return true
        }

        return !tokenItem.hasLongTransactions
    }
}
