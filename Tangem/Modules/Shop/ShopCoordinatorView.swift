//
//  ShopCoordinatorView.swift
//  Tangem
//
//  Created by Alexander Osokin on 15.06.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI

struct ShopCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: ShopCoordinator
    
    var body: some View {
        NavigationView {
            ShopContainerView(viewModel: coordinator.shopViewModel)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
