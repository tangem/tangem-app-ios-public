//
//  StakeDetailsViewModel.swift
//  Tangem
//
//  Created by Sergey Balashov on 22.05.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Combine
import SwiftUI

final class StakeDetailsViewModel: ObservableObject {
    // MARK: - ViewState

    // MARK: - Dependencies

    private weak var coordinator: StakeDetailsRoutable?

    init(
        coordinator: StakeDetailsRoutable
    ) {
        self.coordinator = coordinator
    }
}
