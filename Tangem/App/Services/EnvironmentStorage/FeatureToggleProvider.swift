//
//  FeatureToggleProvider.swift
//  Tangem
//
//  Created by Sergey Balashov on 26.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

// Use this provider for your feature
enum FeatureProvider {
    static func isAvailable(_ toggle: FeatureToggle) -> Bool {
        EnvironmentStorage.integratedFeatures.contains(toggle.rawValue)
    }
}
