//
//  WelcomeCoordinatorView.swift
//  Tangem
//
//

import Foundation
import SwiftUI

struct WelcomeCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: WelcomeCoordinator

    var body: some View {
        ZStack {
            content
            sheets
            welcomeOnboarding
        }
        .navigationBarHidden(coordinator.isNavigationBarHidden)
        .animation(.default, value: coordinator.viewState)
    }

    @ViewBuilder
    private var content: some View {
        switch coordinator.viewState {
        case .welcome(let welcomeViewModel):
            WelcomeView(viewModel: welcomeViewModel)
                .navigationLinks(links)
        case .main(let mainCoordinator):
            MainCoordinatorView(coordinator: mainCoordinator)
        case .none:
            EmptyView()
        }
    }

    @ViewBuilder
    private var links: some View {
        NavHolder()
            .navigation(item: $coordinator.pushedOnboardingCoordinator) {
                OnboardingCoordinatorView(coordinator: $0)
            }
    }

    @ViewBuilder
    private var sheets: some View {
        NavHolder()
            .sheet(item: $coordinator.promotionCoordinator) {
                PromotionCoordinatorView(coordinator: $0)
            }
            .sheet(item: $coordinator.searchTokensViewModel) {
                WelcomeSearchTokensView(viewModel: $0)
            }
            .sheet(item: $coordinator.mailViewModel) {
                MailView(viewModel: $0)
            }
    }

    @ViewBuilder
    private var welcomeOnboarding: some View {
        if let welcomeOnboardingCoordinator = coordinator.welcomeOnboardingCoordinator {
            WelcomeOnboardingCoordinatorView(coordinator: welcomeOnboardingCoordinator)
        }
    }
}
