//
//  AnalyticsContextScope.swift
//  Tangem
//
//  Created by Alexander Osokin on 09.02.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

enum AnalyticsContextScope {
    case common(extraEventId: String? = nil)
    case userWallet(userWalletId: UserWalletId, extraEventId: String? = nil)
}
