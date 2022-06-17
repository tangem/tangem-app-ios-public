//
//  TokenListCoordinatorView.swift
//  Tangem
//
//  Created by Alexander Osokin on 15.06.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

import SwiftUI

struct TokenListCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: TokenListCoordinator
    
    var body: some View {
        NavigationView {
            TokenListView(viewModel: coordinator.tokenListViewModel)
                .navigation(item: $coordinator.addCustomTokenViewModel) {
                    AddCustomTokenView(viewModel: $0)
                }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
