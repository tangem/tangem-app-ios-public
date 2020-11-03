//
//  DisclamerViewModel.swift
//  Tangem Tap
//
//  Created by Alexander Osokin on 03.11.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation

class DisclaimerViewModel: ViewModel {
    @Published var navigation: NavigationCoordinator!
    var assembly: Assembly!
    var userPrefsService: UserPrefsService!
    
    @Published var state: State = .accept
    
    func accept() {
        userPrefsService.isTermsOfServiceAccepted = true
        navigation.openMainFromDisclaimer = true
    }
}

extension DisclaimerViewModel {
    enum State {
        case accept
        case read
    }
}
