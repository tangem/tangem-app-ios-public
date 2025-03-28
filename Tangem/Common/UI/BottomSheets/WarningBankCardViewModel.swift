//
//  WarningBankCardViewModel.swift
//  Tangem
//
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
