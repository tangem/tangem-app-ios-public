//
//  DetailsCoordinatorView.swift
//  Tangem
//
//

import Foundation
import SwiftUI

struct DetailsCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: DetailsCoordinator

    var body: some View {
        ZStack {
            if let model = coordinator.detailsViewModel {
                DetailsView(viewModel: model)
                    .navigationLinks(links)
            }

            sheets
        }
    }

    @ViewBuilder
    private var links: some View {
        NavHolder()
            .navigation(item: $coordinator.walletConnectCoordinator) {
                WalletConnectCoordinatorView(coordinator: $0)
            }
            .navigation(item: $coordinator.userWalletSettingsCoordinator) {
                UserWalletSettingsCoordinatorView(coordinator: $0)
            }
            .navigation(item: $coordinator.appSettingsCoordinator) {
                AppSettingsCoordinatorView(coordinator: $0)
            }
            .navigation(item: $coordinator.tosViewModel) {
                TOSView(viewModel: $0)
            }
            .navigation(item: $coordinator.environmentSetupCoordinator) {
                EnvironmentSetupCoordinatorView(coordinator: $0)
            }
    }

    @ViewBuilder
    private var sheets: some View {
        NavHolder()
            .sheet(item: $coordinator.mailViewModel) {
                MailView(viewModel: $0)
            }
            .sheet(item: $coordinator.modalOnboardingCoordinator) {
                OnboardingCoordinatorView(coordinator: $0)
                    .presentation(modal: true, onDismissalAttempt: $0.onDismissalAttempt, onDismissed: nil)
                    .onPreferenceChange(ModalSheetPreferenceKey.self, perform: { value in
                        coordinator.modalOnboardingCoordinatorKeeper = value
                    })
            }
            .fullScreenCover(item: $coordinator.supportChatViewModel) {
                SupportChatView(viewModel: $0)
                    .edgesIgnoringSafeArea(.vertical)
            }
    }
}
