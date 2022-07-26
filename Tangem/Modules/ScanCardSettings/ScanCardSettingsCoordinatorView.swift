//
//  ScanCardSettingsCoordinatorView.swift
//  Tangem
//
//  Created by Sergey Balashov on 26.07.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI

struct ScanCardSettingsCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: ScanCardSettingsCoordinator

    init(coordinator: ScanCardSettingsCoordinator) {
        self.coordinator = coordinator
    }

    var body: some View {
        if let rootViewModel = coordinator.rootViewModel {
            ScanCardSettingsView(viewModel: rootViewModel)
        }
    }
}
