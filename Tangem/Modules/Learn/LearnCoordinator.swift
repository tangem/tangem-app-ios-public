//
//  LearnCoordinator.swift
//
//
//  Created by Andrey Chukavin on 30.05.2023.
//

import Foundation
import Combine

class LearnCoordinator: CoordinatorObject {
    let dismissAction: Action
    let popToRootAction: ParamsAction<PopToRootOptions>

    // MARK: - Root view model

    @Published private(set) var rootViewModel: LearnViewModel?

    // MARK: - Child coordinators

    // MARK: - Child view models

    required init(
        dismissAction: @escaping Action,
        popToRootAction: @escaping ParamsAction<PopToRootOptions>
    ) {
        self.dismissAction = dismissAction
        self.popToRootAction = popToRootAction
    }

    func start(with options: Options) {
        rootViewModel = LearnViewModel(coordinator: self)
    }
}

// MARK: - Options

extension LearnCoordinator {
    enum Options {
        case `default`
    }
}

// MARK: - LearnRoutable

extension LearnCoordinator: LearnRoutable {}
