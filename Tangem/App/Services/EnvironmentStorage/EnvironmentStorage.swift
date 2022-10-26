//
//  EnvironmentStorage.swift
//  Tangem
//
//  Created by Sergey Balashov on 26.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

struct EnvironmentStorage {
    @AppStorageCompat(EnvironmentStorageKeys.testnet)
    static var isTestnet: Bool = false
    
    @AppStorageCompat(EnvironmentStorageKeys.integratedFeatures)
    static var integratedFeatures: [String] = []
}
