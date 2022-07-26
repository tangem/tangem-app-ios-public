//
//  ScanCardSettingsViewModel.swift
//  Tangem
//
//  Created by Sergey Balashov on 26.07.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Combine

final class ScanCardSettingsViewModel: ObservableObject {
    // MARK: ViewState

    // MARK: Dependencies

    private unowned let coordinator: ScanCardSettingsRoutable

    init(
        coordinator: ScanCardSettingsRoutable
    ) {
        self.coordinator = coordinator
    }
}
