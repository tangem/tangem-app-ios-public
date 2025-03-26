//
//  InformationHiddenBalancesViewModel.swift
//  Tangem
//
//

import Combine
import SwiftUI

final class InformationHiddenBalancesViewModel: ObservableObject, Identifiable {
    // MARK: - Dependencies

    private weak var coordinator: InformationHiddenBalancesRoutable?

    init(coordinator: InformationHiddenBalancesRoutable) {
        self.coordinator = coordinator
    }

    func userDidRequestCloseView() {
        coordinator?.hiddenBalancesSheetDidRequestClose()
    }

    func userDidRequestDoNotShowAgain() {
        coordinator?.hiddenBalancesSheetDidRequestDoNotShowAgain()
    }
}
