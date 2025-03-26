//
//  ReferralCoordinatorView.swift
//  Tangem
//
//

import SwiftUI

struct ReferralCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: ReferralCoordinator

    var body: some View {
        ZStack {
            if let model = coordinator.referralViewModel {
                ReferralView(viewModel: model)
                    .navigationLinks(links)
            }
        }
    }

    @ViewBuilder
    private var links: some View {
        NavHolder()
            .navigation(item: $coordinator.tosViewModel) {
                WebViewContainer(viewModel: $0)
            }
            .emptyNavigationLink()
    }
}
