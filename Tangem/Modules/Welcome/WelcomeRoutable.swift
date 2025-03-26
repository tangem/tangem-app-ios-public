//
//  WelcomeRoutable.swift
//  Tangem
//
//

import Foundation

protocol WelcomeRoutable: AnyObject {
    func openPromotion()
    func openTokensList()
    func openMail(with dataCollector: EmailDataCollector, recipient: String)
    func openShop()
    func openOnboarding(with input: OnboardingInput)
    func openMain(with userWalletModel: UserWalletModel)
    func openScanCardManual()
}
