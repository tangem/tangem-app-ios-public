//
//  UserWalletStorageAgreementCoordinatorView.swift
//  Tangem
//
//  Created by Andrey Chukavin on 16.08.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI

struct UserWalletStorageAgreementCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: UserWalletStorageAgreementCoordinator

    init(coordinator: UserWalletStorageAgreementCoordinator) {
        self.coordinator = coordinator
    }

    var body: some View {
        ZStack {
            if let rootViewModel = coordinator.rootViewModel {
                UserWalletStorageAgreementView(viewModel: rootViewModel)
                    .navigationLinks(links)
            }

            sheets
        }
    }

    @ViewBuilder
    private var links: some View {
        EmptyView()
    }

    @ViewBuilder
    private var sheets: some View {
        EmptyView()
    }
}
