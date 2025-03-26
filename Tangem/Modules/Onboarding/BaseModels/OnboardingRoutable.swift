//
//  OnboardingRoutable.swift
//  Tangem
//
//

import Foundation

protocol OnboardingRoutable: AnyObject {
    func onboardingDidFinish(userWalletModel: UserWalletModel?)
    func closeOnboarding()
    func openSupportChat(input: SupportChatInputModel)
    func openMail(with dataCollector: EmailDataCollector, recipient: String, emailType: EmailType)
    func openWebView(with url: URL)
}
