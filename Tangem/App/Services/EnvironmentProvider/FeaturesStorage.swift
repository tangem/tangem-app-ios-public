//
//  FeaturesStorage.swift
//  Tangem
//
//  Created by Sergey Balashov on 26.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

// MARK: - Provider

class FeaturesStorage {
    @AppStorageCompat(FeaturesStorageKeys.testnet)
    var isTestnet: Bool = false

    @AppStorageCompat(FeaturesStorageKeys.availableFeatures)
    var availableFeatures: [Feature: FeatureState] = [:]

    @AppStorageCompat(FeaturesStorageKeys.useDevApi)
    var useDevApi = false
}

// MARK: - Keys

private enum FeaturesStorageKeys: String {
    case testnet
    case availableFeatures = "integrated_features"
    case useDevApi = "use_dev_api"
}
