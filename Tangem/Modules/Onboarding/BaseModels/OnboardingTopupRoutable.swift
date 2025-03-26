//
//  OnboardingTopupRoutable.swift
//  Tangem
//
//

import Foundation

protocol OnboardingTopupRoutable: OnboardingRoutable {
    func openCryptoShop(at url: URL, action: @escaping () -> Void)
    func openBankWarning(confirmCallback: @escaping () -> Void, declineCallback: @escaping () -> Void)
    func openP2PTutorial()
    func openQR(shareAddress: String, address: String, qrNotice: String)
}
