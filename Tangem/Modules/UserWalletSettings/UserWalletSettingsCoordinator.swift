//
//  UserWalletSettingsCoordinator.swift
//  Tangem
//
//

import Foundation
import Combine

class UserWalletSettingsCoordinator: CoordinatorObject {
    let dismissAction: Action<Void>
    let popToRootAction: Action<PopToRootOptions>

    // MARK: - Root view model

    @Published private(set) var rootViewModel: UserWalletSettingsViewModel?

    // MARK: - Child coordinators

    @Published var modalOnboardingCoordinator: OnboardingCoordinator?
    @Published var referralCoordinator: ReferralCoordinator?
    @Published var manageTokensCoordinator: ManageTokensCoordinator?
    @Published var scanCardSettingsCoordinator: ScanCardSettingsCoordinator?

    // MARK: - Child view models

    // MARK: - Helpers

    @Published var modalOnboardingCoordinatorKeeper: Bool = false

    required init(
        dismissAction: @escaping Action<Void>,
        popToRootAction: @escaping Action<PopToRootOptions>
    ) {
        self.dismissAction = dismissAction
        self.popToRootAction = popToRootAction
    }

    func start(with userWalletModel: Options) {
        rootViewModel = UserWalletSettingsViewModel(userWalletModel: userWalletModel, coordinator: self)
    }
}

// MARK: - Options

extension UserWalletSettingsCoordinator {
    typealias Options = UserWalletModel
}

// MARK: - UserWalletSettingsRoutable

extension UserWalletSettingsCoordinator: UserWalletSettingsRoutable {
    func openAddNewAccount() {
        // TODO:
    }

    func openOnboardingModal(with input: OnboardingInput) {
        let dismissAction: Action<OnboardingCoordinator.OutputOptions> = { [weak self] result in
            self?.modalOnboardingCoordinator = nil
            if result.isSuccessful {
                self?.dismiss()
            }
        }

        let coordinator = OnboardingCoordinator(dismissAction: dismissAction)
        let options = OnboardingCoordinator.Options(input: input, destination: .dismiss)
        coordinator.start(with: options)
        modalOnboardingCoordinator = coordinator
    }

    func openScanCardSettings(with input: ScanCardSettingsViewModel.Input) {
        let coordinator = ScanCardSettingsCoordinator(dismissAction: dismissAction)
        coordinator.start(with: .init(input: input))
        scanCardSettingsCoordinator = coordinator
    }

    func openReferral(input: ReferralInputModel) {
        let dismissAction: Action<Void> = { [weak self] _ in
            self?.referralCoordinator = nil
        }

        let coordinator = ReferralCoordinator(dismissAction: dismissAction)
        coordinator.start(with: .init(input: input))
        referralCoordinator = coordinator
        Analytics.log(.referralScreenOpened)
    }

    func openManageTokens(userWalletModel: any UserWalletModel) {
        let dismissAction: Action<Void> = { [weak self] _ in
            self?.manageTokensCoordinator = nil
        }

        let coordinator = ManageTokensCoordinator(dismissAction: dismissAction)
        coordinator.start(with: .init(userWalletModel: userWalletModel))
        manageTokensCoordinator = coordinator
    }
}
