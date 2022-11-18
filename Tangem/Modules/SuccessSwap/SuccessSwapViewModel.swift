//
//  SuccessSwapViewModel.swift
//  Tangem
//
//  Created by Sergey Balashov on 18.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Combine
import SwiftUI

final class SuccessSwapViewModel: ObservableObject {
    // MARK: - ViewState

    // MARK: - Dependencies

    private unowned let coordinator: SuccessSwapRoutable

    init(
        coordinator: SuccessSwapRoutable
    ) {
        self.coordinator = coordinator
    }
}
