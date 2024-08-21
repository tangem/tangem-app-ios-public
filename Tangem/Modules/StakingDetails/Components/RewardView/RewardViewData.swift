//
//  RewardViewData.swift
//  Tangem
//
//  Created by Sergey Balashov on 29.05.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

struct RewardViewData: Hashable, Identifiable {
    var id: Int { hashValue }

    let state: State
}

extension RewardViewData {
    enum State: Hashable {
        case noRewards
        case rewards(fiatFormatted: String, cryptoFormatted: String)
    }
}
