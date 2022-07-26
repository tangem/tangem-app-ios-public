// 
//  AppSettingsViewModel.swift
//  Tangem
//
//  Created by Sergey Balashov on 26.07.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Combine

final class AppSettingsViewModel: ObservableObject {
    // MARK: ViewState

    // MARK: Dependencies

    private unowned let coordinator: AppSettingsRoutable

    init(
        coordinator: AppSettingsRoutable
    ) {
        self.coordinator = coordinator
    }
}
