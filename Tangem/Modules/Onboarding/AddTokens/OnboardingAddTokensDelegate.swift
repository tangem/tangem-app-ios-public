//
//  OnboardingAddTokensDelegate.swift
//  Tangem
//
//

import Foundation

protocol OnboardingAddTokensDelegate: AnyObject {
    func goToNextStep()
    func showAlert(_ alert: AlertBinder)
}
