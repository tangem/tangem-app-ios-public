//
//  UserWalletSettingsRoutable.swift
//  Tangem
//
//

import Foundation

protocol UserWalletSettingsRoutable: AnyObject {
    func openAddNewAccount()
    func openOnboardingModal(with input: OnboardingInput)

    func openScanCardSettings(with input: ScanCardSettingsViewModel.Input)
    func openReferral(input: ReferralInputModel)
    func openManageTokens(userWalletModel: UserWalletModel)
    func dismiss()
}
