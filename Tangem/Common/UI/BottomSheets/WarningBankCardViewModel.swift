//
//  WarningBankCardViewModel.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 05.07.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

class WarningBankCardViewModel: Identifiable {
    let confirmCallback: () -> Void
    let declineCallback: () -> Void

    init(confirmCallback: @escaping () -> Void, declineCallback: @escaping () -> Void) {
        self.confirmCallback = confirmCallback
        self.declineCallback = declineCallback
    }

    func onAppear() {
        Analytics.log(.p2PScreenOpened)
    }
}
