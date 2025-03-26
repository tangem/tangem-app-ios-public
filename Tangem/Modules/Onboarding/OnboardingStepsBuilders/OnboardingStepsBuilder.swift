//
//  OnboardingStepsBuilder.swift
//  Tangem
//
//

import Foundation

protocol OnboardingStepsBuilder {
    func buildOnboardingSteps() -> OnboardingSteps
    func buildBackupSteps() -> OnboardingSteps?
}
