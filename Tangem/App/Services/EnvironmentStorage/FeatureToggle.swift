//
//  FeatureToggle.swift
//  Tangem
//
//  Created by Sergey Balashov on 26.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

enum FeatureToggle: String, Hashable, CaseIterable {
    case test
    
    var name: String {
        switch self {
        case .test: return "Test (will be able in future)"
        }
    }
}
