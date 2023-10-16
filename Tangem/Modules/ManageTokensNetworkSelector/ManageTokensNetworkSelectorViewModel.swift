//
//  ManageTokensNetworkSelectorViewModel.swift
//  Tangem
//
//  Created by skibinalexander on 21.09.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class ManageTokensNetworkSelectorViewModel: Identifiable, ObservableObject {
    // MARK: - Injected Properties

    @Injected(\.quotesRepository) private var tokenQuotesRepository: TokenQuotesRepository
    @Injected(\.userWalletRepository) private var userWalletRepository: UserWalletRepository

    // MARK: - Published Properties

    @Published var selectorItems: [ManageTokensNetworkSelectorItemViewModel] = []

    // MARK: - Private Properties

    private unowned let coordinator: ManageTokensNetworkSelectorCoordinator

    // MARK: - Init

    // TODO: - Dummy init for demo use
    init(tokenItems: [TokenItem], coordinator: ManageTokensNetworkSelectorCoordinator) {
        self.coordinator = coordinator
        selectorItems = tokenItems.map {
            .init(
                isMain: $0.isBlockchain,
                iconName: "",
                iconNameSelected: "",
                networkName: $0.networkName,
                tokenTypeName: $0.name,
                isSelected: .constant(false)
            )
        }
    }
}
