//
//  OrganizeTokensOptionsEditing.swift
//  Tangem
//
//

import Foundation
import Combine

protocol OrganizeTokensOptionsEditing {
    func group(by groupingOption: UserTokensReorderingOptions.Grouping)
    func sort(by sortingOption: UserTokensReorderingOptions.Sorting)
    func save(reorderedWalletModelIds: [WalletModel.ID], source: UserTokensReorderingSource) -> AnyPublisher<Void, Never>
}
