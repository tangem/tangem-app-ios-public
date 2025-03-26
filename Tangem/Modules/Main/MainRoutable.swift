//
//  MainRoutable.swift
//  Tangem
//
//

import Foundation

protocol MainRoutable: AnyObject {
    func openDetails(for userWalletModel: UserWalletModel)
    func openMail(with dataCollector: EmailDataCollector, emailType: EmailType, recipient: String)
    func openOnboardingModal(with input: OnboardingInput)
    func openScanCardManual()
    func openPushNotificationsAuthorization()
}
