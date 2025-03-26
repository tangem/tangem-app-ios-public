//
//  MarketsTokenNetworkSelectorCoordinatorView.swift
//  Tangem
//
//

import SwiftUI

struct MarketsTokenNetworkSelectorCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: MarketsTokenNetworkSelectorCoordinator

    var body: some View {
        NavigationView {
            if let viewModel = coordinator.rootViewModel {
                MarketsTokensNetworkSelectorView(viewModel: viewModel)
                    .navigationLinks(links)
            }
        }
    }

    @ViewBuilder
    private var links: some View {
        NavHolder()
            .navigation(item: $coordinator.walletSelectorViewModel) {
                WalletSelectorView(viewModel: $0)
            }
            .emptyNavigationLink()
    }
}
