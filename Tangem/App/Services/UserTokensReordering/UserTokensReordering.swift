//
//  UserTokensReordering.swift
//  Tangem
//
//

import Foundation
import Combine

protocol UserTokensReordering {
    var orderedWalletModelIds: AnyPublisher<[WalletModel.ID], Never> { get }
    var groupingOption: AnyPublisher<UserTokensReorderingOptions.Grouping, Never> { get }
    var sortingOption: AnyPublisher<UserTokensReorderingOptions.Sorting, Never> { get }

    func reorder(_ actions: [UserTokensReorderingAction], source: UserTokensReorderingSource) -> AnyPublisher<Void, Never>
}
