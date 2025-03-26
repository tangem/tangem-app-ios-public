//
//  SecurityModeCoordinatorView.swift
//  Tangem
//
//

import Foundation
import SwiftUI

struct SecurityModeCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: SecurityModeCoordinator

    var body: some View {
        if let model = coordinator.securityModeViewModel {
            SecurityModeView(viewModel: model)
                .navigationLinks(links)
        }
    }

    @ViewBuilder
    private var links: some View {
        NavHolder()
            .navigation(item: $coordinator.cardOperationViewModel) {
                CardOperationView(viewModel: $0)
            }
            .emptyNavigationLink()
    }
}
