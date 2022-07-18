//
//  WarningBankCardViewModel.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 05.07.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

class WarningBankCardViewModel: Identifiable {
    let confirmCallback: () -> ()
    let declineCallback: () -> ()

    init(confirmCallback: @escaping () -> (), declineCallback: @escaping () -> ()) {
        self.confirmCallback = confirmCallback
        self.declineCallback = declineCallback
    }
}
