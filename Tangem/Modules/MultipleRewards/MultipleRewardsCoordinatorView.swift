//
//  MultipleRewardsCoordinatorView.swift
//  Tangem
//
//

import SwiftUI

struct MultipleRewardsCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: MultipleRewardsCoordinator

    init(coordinator: MultipleRewardsCoordinator) {
        self.coordinator = coordinator
    }

    var body: some View {
        ZStack {
            if let rootViewModel = coordinator.rootViewModel {
                MultipleRewardsView(viewModel: rootViewModel)
                    .navigationLinks(links)
            }

            sheets
        }
    }

    @ViewBuilder
    private var links: some View {
        EmptyView()
    }

    @ViewBuilder
    private var sheets: some View {
        NavHolder()
            .sheet(item: $coordinator.sendCoordinator) {
                SendCoordinatorView(coordinator: $0)
            }
    }
}
