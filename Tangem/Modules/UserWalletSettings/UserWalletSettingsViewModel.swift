//
//  UserWalletSettingsViewModel.swift
//  Tangem
//
//  Created by Sergey Balashov on 22.04.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Combine
import SwiftUI

final class UserWalletSettingsViewModel: ObservableObject {
    // MARK: - ViewState

    // MARK: - Dependencies

    private let userWalletModel: UserWalletModel
    private weak var coordinator: UserWalletSettingsRoutable?

    init(
        userWalletModel: UserWalletModel,
        coordinator: UserWalletSettingsRoutable
    ) {
        self.userWalletModel = userWalletModel
        self.coordinator = coordinator
    }
}
