//
//  UserTokensReorderingOptionsConverter.swift
//  Tangem
//
//

import Foundation

struct UserTokensReorderingOptionsConverter {
    func convert(
        _ groupType: StoredUserTokenList.Grouping
    ) -> UserTokensReorderingOptions.Grouping {
        switch groupType {
        case .none:
            return .none
        case .byBlockchainNetwork:
            return .byBlockchainNetwork
        }
    }

    func convert(
        _ sortType: StoredUserTokenList.Sorting
    ) -> UserTokensReorderingOptions.Sorting {
        switch sortType {
        case .manual:
            return .dragAndDrop
        case .byBalance:
            return .byBalance
        }
    }

    func convert(
        _ groupType: UserTokensReorderingOptions.Grouping
    ) -> StoredUserTokenList.Grouping {
        switch groupType {
        case .none:
            return .none
        case .byBlockchainNetwork:
            return .byBlockchainNetwork
        }
    }

    func convert(
        _ sortType: UserTokensReorderingOptions.Sorting
    ) -> StoredUserTokenList.Sorting {
        switch sortType {
        case .dragAndDrop:
            return .manual
        case .byBalance:
            return .byBalance
        }
    }
}
