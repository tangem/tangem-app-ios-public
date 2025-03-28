//
//  StakingDetailsCoordinatorView.swift
//  Tangem
//
//

import SwiftUI

struct StakingDetailsCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: StakingDetailsCoordinator

    init(coordinator: StakingDetailsCoordinator) {
        self.coordinator = coordinator
    }

    var body: some View {
        ZStack {
            if let rootViewModel = coordinator.rootViewModel {
                StakingDetailsView(viewModel: rootViewModel)
                    .navigationLinks(links)
            }

            sheets
        }
    }

    @ViewBuilder
    private var links: some View {
        NavHolder()
            .navigation(item: $coordinator.tokenDetailsCoordinator) {
                TokenDetailsCoordinatorView(coordinator: $0)
            }
    }

    @ViewBuilder
    private var sheets: some View {
        NavHolder()
            .sheet(item: $coordinator.sendCoordinator) {
                SendCoordinatorView(coordinator: $0)
            }
            .sheet(item: $coordinator.multipleRewardsCoordinator) {
                MultipleRewardsCoordinatorView(coordinator: $0)
            }
    }
}
