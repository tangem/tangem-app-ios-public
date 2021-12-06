//
//  OnboardingProgressStateIndicatable.swift
//  Tangem
//
//  Created by Andrew Son on 14.09.2021.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation

protocol OnboardingProgressStepIndicatable {
    var isOnboardingFinished: Bool { get }
    var successCircleOpacity: Double { get }
    var successCircleState: OnboardingCircleButton.State { get }
}
