//
//  AuthRoutable.swift
//  Tangem
//
//

import Foundation

protocol AuthRoutable: AnyObject {
    func openOnboarding(with input: OnboardingInput)
    func openMain(with userWalletModel: UserWalletModel)
    func openMail(with dataCollector: EmailDataCollector, recipient: String)
    func openScanCardManual()
}
