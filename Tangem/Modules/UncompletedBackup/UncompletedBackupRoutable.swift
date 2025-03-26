//
//  UncompletedBackupRoutable.swift
//  Tangem
//
//

import Foundation

protocol UncompletedBackupRoutable: AnyObject {
    func openOnboardingModal(with input: OnboardingInput)
    func dismiss()
}
