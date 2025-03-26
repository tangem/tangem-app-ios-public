//
//  CardSettingsRoutable.swift
//  Tangem
//
//

import Foundation

protocol CardSettingsRoutable: AnyObject {
    func openOnboarding(with input: OnboardingInput)
    func openSecurityMode(with securityOptionChangeInteractor: SecurityOptionChanging)
    func openResetCardToFactoryWarning(with input: ResetToFactoryViewModel.Input)
    func openAccessCodeRecoverySettings(with recoveryInteractor: UserCodeRecovering)
    func dismiss()
    func popToRoot()
}
