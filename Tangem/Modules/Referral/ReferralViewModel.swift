//
//  ReferralViewModel.swift
//  Tangem
//
//  Created by Andrew Son on 02/11/22.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Combine

class ReferralViewModel: ObservableObject {
    @Published var isLoading: Bool = true

    private let coordinator: ReferralRoutable

    init(coordinator: ReferralRoutable) {
        self.coordinator = coordinator
    }
}
