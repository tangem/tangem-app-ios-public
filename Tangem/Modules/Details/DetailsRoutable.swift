//
//  DetailsRoutable.swift
//  Tangem
//
//

import Foundation

protocol DetailsRoutable: AnyObject {
    func openWalletConnect(with disabledLocalizedReason: String?)
    func openWalletSettings(options: UserWalletSettingsCoordinator.Options)

    func openOnboardingModal(with input: OnboardingInput)

    func openAppSettings()
    func openMail(with dataCollector: EmailDataCollector, recipient: String, emailType: EmailType)
    func openSupportChat(input: SupportChatInputModel)
    func openTOS()
    func openScanCardManual()
    func openShop()
    func openSocialNetwork(url: URL)

    func openEnvironmentSetup()
    func dismiss()
}
