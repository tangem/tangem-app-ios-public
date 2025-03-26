//
//  ScanCardSettingsCoordinatorView.swift
//  Tangem
//
//

import Foundation
import SwiftUI

struct ScanCardSettingsCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: ScanCardSettingsCoordinator

    var body: some View {
        if let rootViewModel = coordinator.rootViewModel {
            ScanCardSettingsView(viewModel: rootViewModel)
                .navigationLinks(links)
        }
    }

    @ViewBuilder
    private var links: some View {
        NavHolder()
            .navigation(item: $coordinator.cardSettingsCoordinator) {
                CardSettingsCoordinatorView(coordinator: $0)
            }
            .emptyNavigationLink()
    }
}
