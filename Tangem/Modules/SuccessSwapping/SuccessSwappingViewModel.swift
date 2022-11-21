//
//  SuccessSwappingViewModel.swift
//  Tangem
//
//  Created by Sergey Balashov on 18.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Combine
import SwiftUI

final class SuccessSwappingViewModel: ObservableObject, Identifiable {
    let id = UUID()

    // MARK: - ViewState

    // MARK: - Dependencies

    private unowned let coordinator: SuccessSwappingRoutable?

    init(
        coordinator: SuccessSwappingRoutable?
    ) {
        self.coordinator = coordinator
    }
    
    func didTapDone() {
        
    }
}
