//
//  WelcomeOnboardingCoordinator.swift
//  Tangem
//
//

import Foundation
import Combine

class WelcomeOnboardingCoordinator: CoordinatorObject {
    let dismissAction: Action<Void>
    let popToRootAction: Action<PopToRootOptions>

    // MARK: - Root view model

    @Published private(set) var rootViewModel: WelcomeOnboardingViewModel?

    // MARK: - Child coordinators

    // MARK: - Child view models

    required init(
        dismissAction: @escaping Action<Void>,
        popToRootAction: @escaping Action<PopToRootOptions>
    ) {
        self.dismissAction = dismissAction
        self.popToRootAction = popToRootAction
    }

    func start(with options: Options) {
        rootViewModel = .init(
            steps: options.steps,
            pushNotificationsPermissionManager: options.pushNotificationsPermissionManager,
            coordinator: self
        )
    }
}

// MARK: - Options

extension WelcomeOnboardingCoordinator {
    struct Options {
        let steps: [WelcomeOnboardingStep]
        let pushNotificationsPermissionManager: PushNotificationsPermissionManager
    }
}

// MARK: - WelcomeOnboardingRoutable

extension WelcomeOnboardingCoordinator: WelcomeOnboardingRoutable {}
