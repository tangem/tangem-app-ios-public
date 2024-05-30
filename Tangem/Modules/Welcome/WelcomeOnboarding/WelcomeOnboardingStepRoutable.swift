//
//  WelcomeOnboardingStepRoutable.swift
//  Tangem
//
//  Created by Alexander Osokin on 30.05.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

protocol WelcomeOnboardingStepRoutable: AnyObject {
    func openNextStep() -> Void
}
