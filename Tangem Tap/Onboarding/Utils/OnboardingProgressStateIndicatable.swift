//
//  OnboardingProgressStateIndicatable.swift
//  Tangem Tap
//
//  Created by Andrew Son on 14.09.2021.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation

protocol OnboardingProgressStepIndicatable {
    static var maxNumberOfSteps: Int { get }
    var progressStep: Int { get }
}
