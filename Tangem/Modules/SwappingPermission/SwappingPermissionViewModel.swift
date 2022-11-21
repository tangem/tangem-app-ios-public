//
//  SwappingPermissionViewModel.swift
//  Tangem
//
//  Created by Sergey Balashov on 21.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Combine
import SwiftUI

final class SwappingPermissionViewModel: ObservableObject {
    // MARK: - ViewState

    // MARK: - Dependencies

    private unowned let coordinator: SwappingPermissionRoutable?

    init(
        coordinator: SwappingPermissionRoutable?
    ) {
        self.coordinator = coordinator
    }
}
