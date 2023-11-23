//
//  ManageTokensDataSource.swift
//  Tangem
//
//  Created by skibinalexander on 23.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

class ManageTokensDataSource {
    // MARK: - Injected

    @Injected(\.userWalletRepository) private var userWalletRepository: UserWalletRepository

    var userWalletModels: [UserWalletModel] = []

    var defaultUserWalletModel: UserWalletModel? {
        userWalletRepository.selectedUserModelModel
    }

    // MARK: - Init

    init() {
        userWalletModels = userWalletRepository.models.filter { !$0.isUserWalletLocked }
    }
}
