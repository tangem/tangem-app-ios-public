//
//  ManageTokensNetworkSelectorCoordinatorView.swift
//  Tangem
//
//  Created by skibinalexander on 21.09.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

struct ManageTokensNetworkSelectorCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: ManageTokensNetworkSelectorCoordinator

    var body: some View {
        NavigationView {
            if let model = coordinator.manageTokensNetworkSelectorViewModel {
                ManageTokensNetworkSelectorView(viewModel: model)
            }
        }
        .navigationViewStyle(.stack)
    }
}
