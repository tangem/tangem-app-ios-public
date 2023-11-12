//
//  MainBottomSheetOverlayCoordinatorView.swift
//  Tangem
//
//  Created by Andrey Fedorov on 12.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import SwiftUI

/// - Note: Two separate root coordinator views are used in this module due to the architecture of the
/// scrollable bottom sheet UI component, which consists of two parts (views) - `header` and `content`.
struct MainBottomSheetOverlayCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: MainBottomSheetCoordinator

    var body: some View {
        if let viewModel = coordinator.overlayViewModel {
            GenerateAddressesView(viewModel: viewModel)
                .infinityFrame(alignment: .bottom)
        }
    }
}
