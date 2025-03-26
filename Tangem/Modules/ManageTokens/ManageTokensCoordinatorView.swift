//
//  ManageTokensCoordinatorView.swift
//  Tangem
//
//

import SwiftUI

struct ManageTokensCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: ManageTokensCoordinator
    var body: some View {
        ZStack {
            if let rootViewModel = coordinator.rootViewModel {
                ManageTokensView(viewModel: rootViewModel)
            }

            sheets
        }
    }

    @ViewBuilder
    private var sheets: some View {
        NavHolder()
            .sheet(item: $coordinator.addCustomTokenCoordinator, content: {
                AddCustomTokenCoordinatorView(coordinator: $0)
            })
    }
}
