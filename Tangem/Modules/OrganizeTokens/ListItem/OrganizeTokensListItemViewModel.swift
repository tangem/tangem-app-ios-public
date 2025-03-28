//
//  OrganizeTokensListItemViewModel.swift
//  Tangem
//
//

import Foundation
import SwiftUI

struct OrganizeTokensListItemViewModel: Hashable, Identifiable {
    let id: Identifier

    var name: String { tokenIcon.name }

    var imageURL: URL? { tokenIcon.imageURL }
    var customTokenColor: Color? { tokenIcon.customTokenColor }
    var blockchainIconName: String? { tokenIcon.blockchainIconName }
    var hasMonochromeIcon: Bool { isNetworkUnreachable || !hasDerivation || isTestnet }
    var isCustom: Bool { tokenIcon.isCustom }

    let balance: LoadableTextView.State

    var errorMessage: String? {
        if !hasDerivation {
            return Localization.commonNoAddress
        }

        if isNetworkUnreachable {
            return Localization.commonUnreachable
        }

        return nil
    }

    let isDraggable: Bool

    private let hasDerivation: Bool
    private let isTestnet: Bool
    private let isNetworkUnreachable: Bool

    private let tokenIcon: TokenIconInfo

    init(
        id: Identifier,
        tokenIcon: TokenIconInfo,
        balance: LoadableTextView.State,
        hasDerivation: Bool,
        isTestnet: Bool,
        isNetworkUnreachable: Bool,
        isDraggable: Bool
    ) {
        self.id = id
        self.tokenIcon = tokenIcon
        self.balance = balance
        self.hasDerivation = hasDerivation
        self.isTestnet = isTestnet
        self.isNetworkUnreachable = isNetworkUnreachable
        self.isDraggable = isDraggable
    }
}

// MARK: - Auxiliary types

extension OrganizeTokensListItemViewModel {
    struct Identifier: Hashable {
        var asAnyHashable: AnyHashable { self as AnyHashable }

        let walletModelId: WalletModel.ID
        let inGroupedSection: Bool
    }
}
