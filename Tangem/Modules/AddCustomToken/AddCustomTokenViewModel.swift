//
//  AddCustomTokenViewModel.swift
//  Tangem
//
//  Created by Andrey Chukavin on 22.09.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Combine
import SwiftUI

final class AddCustomTokenViewModel: ObservableObject {
    // MARK: - ViewState

    // MARK: - Dependencies

    private unowned let coordinator: AddCustomTokenRoutable

    init(
        coordinator: AddCustomTokenRoutable
    ) {
        self.coordinator = coordinator
    }
}
