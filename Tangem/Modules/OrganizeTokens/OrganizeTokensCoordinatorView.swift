//
//  OrganizeTokensCoordinatorView.swift
//  Tangem
//
//  Created by Andrey Fedorov on 06.06.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import SwiftUI

// TODO: Andrey Fedorov - Add actual implementation (IOS-3461)
struct OrganizeTokensCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: OrganizeTokensCoordinator

    init(coordinator: OrganizeTokensCoordinator) {
        self.coordinator = coordinator
    }

    var body: some View {
        ZStack {
            if let rootViewModel = coordinator.rootViewModel {
                OrganizeTokensView(viewModel: rootViewModel)
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
        EmptyView()
    }
}
