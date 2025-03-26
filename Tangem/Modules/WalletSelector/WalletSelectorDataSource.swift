//
//  WalletSelectorDataSource.swift
//  Tangem
//
//

import Foundation
import Combine

protocol WalletSelectorDataSource: AnyObject {
    /// Published value selected UserWalletModel
    var selectedUserWalletIdPublisher: AnyPublisher<UserWalletId?, Never> { get }

    /// ViewModels list for wallet selector screen
    var itemViewModels: [WalletSelectorItemViewModel] { get }
}
