//
//  CardSettingsCoordinator.swift
//  Tangem
//
//

import Foundation

class CardSettingsCoordinator: CoordinatorObject {
    // MARK: - Dependencies

    let dismissAction: Action<Void>
    let popToRootAction: Action<PopToRootOptions>

    // MARK: - Injected

    @Injected(\.userWalletRepository) private var userWalletRepository: UserWalletRepository

    // MARK: - Main view model

    @Published private(set) var cardSettingsViewModel: CardSettingsViewModel?

    // MARK: - Child view models

    @Published var resetToFactoryViewModel: ResetToFactoryViewModel?

    // MARK: - Child coordinators

    @Published var securityManagementCoordinator: SecurityModeCoordinator?
    @Published var modalOnboardingCoordinator: OnboardingCoordinator?
    @Published var accessCodeRecoverySettingsViewModel: AccessCodeRecoverySettingsViewModel?

    // MARK: - Helpers

    @Published var modalOnboardingCoordinatorKeeper: Bool = false

    required init(dismissAction: @escaping Action<Void>, popToRootAction: @escaping Action<PopToRootOptions>) {
        self.dismissAction = dismissAction
        self.popToRootAction = popToRootAction
    }

    func start(with options: Options) {
        cardSettingsViewModel = CardSettingsViewModel(
            input: options.input,
            coordinator: self
        )
    }
}

// MARK: - Options

extension CardSettingsCoordinator {
    struct Options {
        let input: CardSettingsViewModel.Input
    }
}

// MARK: - CardSettingsRoutable

extension CardSettingsCoordinator: CardSettingsRoutable {
    func openOnboarding(with input: OnboardingInput) {
        let dismissAction: Action<OnboardingCoordinator.OutputOptions> = { [weak self] _ in
            self?.modalOnboardingCoordinator = nil
        }

        let popToMainAction: Action<PopToRootOptions> = { [weak self] _ in
            self?.modalOnboardingCoordinator = nil
            self?.dismiss()
        }

        let hasOtherCards = AppSettings.shared.saveUserWallets && userWalletRepository.models.count > 1
        let coordinator = OnboardingCoordinator(
            dismissAction: dismissAction,
            popToRootAction: hasOtherCards ? popToMainAction : popToRootAction
        )
        let options = OnboardingCoordinator.Options(input: input, destination: .root)
        coordinator.start(with: options)
        modalOnboardingCoordinator = coordinator
    }

    func openSecurityMode(with securityOptionChangeInteractor: SecurityOptionChanging) {
        let coordinator = SecurityModeCoordinator(popToRootAction: popToRootAction)
        let options = SecurityModeCoordinator.Options(securityOptionChangeInteractor: securityOptionChangeInteractor)
        coordinator.start(with: options)
        securityManagementCoordinator = coordinator
    }

    func openResetCardToFactoryWarning(with input: ResetToFactoryViewModel.Input) {
        Analytics.log(.buttonFactoryReset)
        resetToFactoryViewModel = ResetToFactoryViewModel(
            input: input,
            coordinator: self
        )
    }

    func openAccessCodeRecoverySettings(with recoveryInteractor: UserCodeRecovering) {
        accessCodeRecoverySettingsViewModel = .init(with: recoveryInteractor)
    }
}

// MARK: - ResetToFactoryViewRoutable

extension CardSettingsCoordinator: ResetToFactoryViewRoutable {
    func dismiss() {
        if userWalletRepository.selectedModel == nil {
            popToRoot()
        } else {
            dismissAction(())
        }
    }
}
