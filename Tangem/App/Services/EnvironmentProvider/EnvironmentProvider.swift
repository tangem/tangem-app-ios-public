//
//  EnvironmentProvider.swift
//  Tangem
//
//  Created by Sergey Balashov on 26.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

// MARK: - Provider

struct EnvironmentProvider {
    @AppStorageCompat(EnvironmentProviderKeys.testnet)
    static var isTestnet: Bool = false
    
    @AppStorageCompat(EnvironmentProviderKeys.integratedFeatures)
    static var integratedFeatures: [String] = []
}

// MARK: - Keys

enum EnvironmentProviderKeys: String {
    case testnet = "testnet"
    case integratedFeatures = "integrated_features"
}
