//
//  SuccessSwappingViewModel.swift
//  Tangem
//
//  Created by Sergey Balashov on 18.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Combine
import SwiftUI

final class SuccessSwappingViewModel: ObservableObject, Identifiable {
    let id = UUID()

    // MARK: - ViewState

    let fromCurrency: String
    let toCurrency: String

    // MARK: - Dependencies

    private unowned let coordinator: SuccessSwappingRoutable

    init(
        fromCurrency: String,
        toCurrency: String,
        coordinator: SuccessSwappingRoutable
    ) {
        self.fromCurrency = fromCurrency
        self.toCurrency = toCurrency
        self.coordinator = coordinator
    }

    func doneDidTapped() {
        coordinator.userDidTapMainButton()
    }
}
