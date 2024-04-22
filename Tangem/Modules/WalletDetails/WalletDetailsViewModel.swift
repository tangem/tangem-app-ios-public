//
//  WalletDetailsViewModel.swift
//  Tangem
//
//  Created by Sergey Balashov on 22.04.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Combine
import SwiftUI

final class WalletDetailsViewModel: ObservableObject {
    // MARK: - ViewState

    // MARK: - Dependencies

    private let userWalletModel: UserWalletModel
    private weak var coordinator: WalletDetailsRoutable?

    init(
        userWalletModel: UserWalletModel,
        coordinator: WalletDetailsRoutable
    ) {
        self.userWalletModel = userWalletModel
        self.coordinator = coordinator
    }
}
