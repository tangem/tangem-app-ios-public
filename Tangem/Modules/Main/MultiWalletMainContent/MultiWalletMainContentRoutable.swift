//
//  MultiWalletMainContentRoutable.swift
//  Tangem
//
//

import Foundation

protocol MultiWalletMainContentRoutable: SingleTokenBaseRoutable {
    func openTokenDetails(for model: WalletModel, userWalletModel: UserWalletModel)
    func openOrganizeTokens(for userWalletModel: UserWalletModel)
    func openOnboardingModal(with input: OnboardingInput)
    func openMail(with dataCollector: EmailDataCollector, emailType: EmailType, recipient: String)
}
