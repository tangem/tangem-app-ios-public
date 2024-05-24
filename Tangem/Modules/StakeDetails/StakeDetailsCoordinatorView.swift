//
//  StakeDetailsCoordinatorView.swift
//  Tangem
//
//  Created by Sergey Balashov on 22.05.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import SwiftUI

struct StakeDetailsCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: StakeDetailsCoordinator

    init(coordinator: StakeDetailsCoordinator) {
        self.coordinator = coordinator
    }

    var body: some View {
        ZStack {
            if let rootViewModel = coordinator.rootViewModel {
                StakeDetailsView(viewModel: rootViewModel)
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
