//
//  ExchangeCoordinatorView.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 21.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI

struct ExchangeCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: ExchangeCoordinator

    var body: some View {
        ZStack {
            if let model = coordinator.exchangeViewModel {
                ExchangeView(viewModel: model)
            }
        }
    }
}
