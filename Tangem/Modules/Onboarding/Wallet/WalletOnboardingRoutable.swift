//
//  WalletOnboardingRoutable.swift
//  Tangem
//
//

import Foundation

protocol WalletOnboardingRoutable: OnboardingTopupRoutable {
    func openAccessCodeView(callback: @escaping (String) -> Void)
}
