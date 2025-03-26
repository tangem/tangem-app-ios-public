//
//  ResetToFactoryViewModelInput.swift
//  Tangem
//
//

import Foundation

extension ResetToFactoryViewModel {
    struct Input {
        let cardInteractor: FactorySettingsResetting
        let backupCardsCount: Int
        let userWalletId: UserWalletId
    }
}
