//
//  SwappingSuccessCoordinatorView.swift
//  Tangem
//
//

import SwiftUI

struct SwappingSuccessCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: SwappingSuccessCoordinator

    init(coordinator: SwappingSuccessCoordinator) {
        self.coordinator = coordinator
    }

    var body: some View {
        if let rootViewModel = coordinator.rootViewModel {
            ExpressSuccessSentView(viewModel: rootViewModel)
        }
    }
}
