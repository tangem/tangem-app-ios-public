//
//  OrganizeTokensListItemViewModel.swift
//  Tangem
//
//  Created by m3g0byt3 on 06.06.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

struct OrganizeTokensListItemViewModel: Hashable, Identifiable {
    var id = UUID()

    var name: String { tokenIcon.name }
    var imageURL: URL? { tokenIcon.imageURL }
    var blockchainIconName: String? { tokenIcon.blockchainIconName }

    var balance: LoadableTextView.State

    var isDraggable: Bool
    var networkUnreachable: Bool
    var hasPendingTransactions: Bool

    private let tokenIcon: TokenIconInfo

    init(
        tokenIcon: TokenIconInfo,
        balance: LoadableTextView.State,
        isDraggable: Bool,
        networkUnreachable: Bool,
        hasPendingTransactions: Bool
    ) {
        self.tokenIcon = tokenIcon
        self.balance = balance
        self.isDraggable = isDraggable
        self.networkUnreachable = networkUnreachable
        self.hasPendingTransactions = hasPendingTransactions
    }
}
