//
//  AppSettingsCoordinatorView.swift
//  Tangem
//
//

import Foundation
import SwiftUI

struct AppSettingsCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: AppSettingsCoordinator

    init(coordinator: AppSettingsCoordinator) {
        self.coordinator = coordinator
    }

    var body: some View {
        if let rootViewModel = coordinator.rootViewModel {
            AppSettingsView(viewModel: rootViewModel)
                .navigationLinks(links)
        }
    }

    @ViewBuilder
    private var links: some View {
        NavHolder()
            .navigation(item: $coordinator.currencySelectViewModel) {
                CurrencySelectView(viewModel: $0)
            }
            .navigation(item: $coordinator.themeSelectionViewModel) {
                ThemeSelectionView(viewModel: $0)
            }
    }
}
