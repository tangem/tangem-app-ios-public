//
//  WelcomeOnboardingCoordinatorView.swift
//  Tangem
//
//

import SwiftUI

struct WelcomeOnboardingCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: WelcomeOnboardingCoordinator

    init(coordinator: WelcomeOnboardingCoordinator) {
        self.coordinator = coordinator
    }

    var body: some View {
        if let rootViewModel = coordinator.rootViewModel {
            WelcomeOnboardingView(viewModel: rootViewModel)
        }
    }
}
