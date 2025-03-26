//
//  UserTokensReorderingAction.swift
//  Tangem
//
//

import Foundation

enum UserTokensReorderingAction {
    case setGroupingOption(option: UserTokensReorderingOptions.Grouping)
    case setSortingOption(option: UserTokensReorderingOptions.Sorting)
    case reorder(reorderedWalletModelIds: [WalletModel.ID])
}
