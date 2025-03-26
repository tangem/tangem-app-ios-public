//
//  UncompletedBackupCoordinatorView.swift
//  Tangem
//
//

import SwiftUI

struct UncompletedBackupCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: UncompletedBackupCoordinator

    init(coordinator: UncompletedBackupCoordinator) {
        self.coordinator = coordinator
    }

    var body: some View {
        ZStack {
            if let rootViewModel = coordinator.rootViewModel {
                UncompletedBackupView(viewModel: rootViewModel)
            }

            sheets
        }
    }

    @ViewBuilder
    private var sheets: some View {
        NavHolder()
            .sheet(item: $coordinator.modalOnboardingCoordinator) {
                OnboardingCoordinatorView(coordinator: $0)
                    .presentation(modal: true, onDismissalAttempt: $0.onDismissalAttempt, onDismissed: nil)
                    .onPreferenceChange(ModalSheetPreferenceKey.self, perform: { value in
                        coordinator.modalOnboardingCoordinatorKeeper = value
                    })
            }
    }
}
