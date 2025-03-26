//
//  OrganizeTokensPreviewViewModelFactory.swift
//  Tangem
//
//

import Foundation

struct OrganizeTokensPreviewViewModelFactory {
    func makeViewModel(for configuration: OrganizeTokensPreviewConfiguration) -> OrganizeTokensViewModel {
        let coordinator = OrganizeTokensRoutableStub()
        let userWalletModel = FakeUserWalletModel.walletWithoutDelay
        let optionsManager = FakeOrganizeTokensOptionsManager(
            initialGroupingOption: configuration.groupingOption,
            initialSortingOption: configuration.sortingOption
        )
        let tokenSectionsAdapter = TokenSectionsAdapter(
            userTokenListManager: userWalletModel.userTokenListManager,
            optionsProviding: optionsManager,
            preservesLastSortedOrderOnSwitchToDragAndDrop: false
        )

        return OrganizeTokensViewModel(
            coordinator: coordinator,
            userWalletModel: userWalletModel,
            tokenSectionsAdapter: tokenSectionsAdapter,
            optionsProviding: optionsManager,
            optionsEditing: optionsManager
        )
    }
}
