//
//  FeatureToggleViewModel.swift
//  Tangem
//
//  Created by Sergey Balashov on 26.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI

// TODO: Will be remove after 
struct FeatureToggleViewModel: Identifiable {
    var id: Int { toggle.hashValue }
    
    let toggle: FeatureToggle
    let isActive: Binding<Bool>
}

extension FeatureToggleViewModel: Equatable {
    static func == (lhs: FeatureToggleViewModel, rhs: FeatureToggleViewModel) -> Bool {
        lhs.id == rhs.id
    }
}

