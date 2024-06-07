//
//  WelcomeOnboaringStepsBuilder.swift
//  Tangem
//
//  Created by Alexander Osokin on 30.05.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

struct WelcomeOnboaringStepsBuilder {
    func buildSteps() -> [WelcomeOnbordingStep] {
        var steps = [WelcomeOnbordingStep]()

        if !AppSettings.shared.termsOfServicesAccepted.contains(AppConstants.tosURL.absoluteString) {
            steps.append(.tos)
        }

        if FeatureProvider.isAvailable(.pushNotifications) {
            // TODO: https://tangem.atlassian.net/browse/IOS-6136
            steps.append(.pushNotifications)
        }

        return steps
    }
}
