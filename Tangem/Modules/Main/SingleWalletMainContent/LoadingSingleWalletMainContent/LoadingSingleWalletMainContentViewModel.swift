//
//  LoadingSingleWalletMainContentViewModel.swift
//  Tangem
//
//

import Foundation

struct LoadingSingleWalletMainContentViewModel {
    let buttonsInfo: [FixedSizeButtonWithIconInfo] = TokenActionListBuilder()
        .buildActionsForLockedSingleWallet()
        .map {
            FixedSizeButtonWithIconInfo(
                title: $0.title,
                icon: $0.icon,
                disabled: true,
                style: .disabled,
                action: {}
            )
        }
}
