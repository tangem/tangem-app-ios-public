//
//  UserTokensReorderingAction.swift
//  Tangem
//
//  Created by Andrey Fedorov on 25.08.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

enum UserTokensReorderingAction {
    case setGroupingOption(option: OrganizeTokensOptions.Grouping)
    case setSortingOption(option: OrganizeTokensOptions.Sorting)
    case reorder(reorderedWalletModelIds: [WalletModel.ID])
}
