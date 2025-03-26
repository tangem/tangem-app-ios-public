//
//  OnboardingProgressStateIndicatable.swift
//  Tangem
//
//

import Foundation

protocol OnboardingProgressStepIndicatable {
    var requiresConfetti: Bool { get }
    var successCircleOpacity: Double { get }
    var successCircleState: OnboardingCircleButton.State { get }
}
