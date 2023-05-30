//
//  LearnViewModel.swift
//
//
//  Created by Andrey Chukavin on 30.05.2023.
//

import Combine
import SwiftUI

final class LearnViewModel: ObservableObject {
    // MARK: - ViewState

    // MARK: - Dependencies

    private unowned let coordinator: LearnRoutable

    init(
        coordinator: LearnRoutable
    ) {
        self.coordinator = coordinator
    }
}
