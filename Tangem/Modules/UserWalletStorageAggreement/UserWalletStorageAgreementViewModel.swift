//
//  UserWalletStorageAgreementViewModel.swift
//  Tangem
//
//

import Combine
import SwiftUI

final class UserWalletStorageAgreementViewModel: ObservableObject, Identifiable {
    // MARK: - Dependencies

    private weak var coordinator: UserWalletStorageAgreementRoutable?

    init(coordinator: UserWalletStorageAgreementRoutable?) {
        self.coordinator = coordinator
    }

    func accept() {
        coordinator?.didAgreeToSaveUserWallets()
    }

    func decline() {
        coordinator?.didDeclineToSaveUserWallets()
    }
}
