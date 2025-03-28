//
//  MultiWalletTokenItemsSectionFactory.swift
//  Tangem
//
//

import Foundation

struct MultiWalletTokenItemsSectionFactory {
    func makeSectionViewModel(
        from sectionType: TokenSectionsAdapter.SectionType, atIndex index: Int
    ) -> MultiWalletMainContentViewModel.SectionViewModel {
        switch sectionType {
        case .plain:
            return MultiWalletMainContentViewModel.SectionViewModel(id: index, title: nil)
        case .group(let blockchainNetwork):
            let title = Localization.walletNetworkGroupTitle(blockchainNetwork.blockchain.displayName)
            return MultiWalletMainContentViewModel.SectionViewModel(id: blockchainNetwork, title: title)
        }
    }

    func makeSectionItemViewModel(
        from sectionItem: TokenSectionsAdapter.SectionItem,
        contextActionsProvider: TokenItemContextActionsProvider,
        contextActionsDelegate: TokenItemContextActionDelegate,
        tapAction: @escaping (WalletModel.ID) -> Void
    ) -> TokenItemViewModel {
        let infoProvider = makeSectionItemInfoProvider(from: sectionItem)
        let iconInfoBuilder = TokenIconInfoBuilder()
        let tokenItem = infoProvider.tokenItem

        let isCustom: Bool
        switch sectionItem {
        case .default(let walletModel):
            isCustom = walletModel.isCustom
        case .withoutDerivation(let userToken):
            isCustom = userToken.isCustom
        }

        let tokenIcon = iconInfoBuilder.build(from: tokenItem, isCustom: isCustom)

        return TokenItemViewModel(
            id: infoProvider.id,
            tokenIcon: tokenIcon,
            isTestnetToken: tokenItem.blockchain.isTestnet,
            infoProvider: infoProvider,
            tokenTapped: tapAction,
            contextActionsProvider: contextActionsProvider,
            contextActionsDelegate: contextActionsDelegate
        )
    }

    private func makeSectionItemInfoProvider(
        from sectionItem: TokenSectionsAdapter.SectionItem
    ) -> TokenItemInfoProvider {
        switch sectionItem {
        case .default(let walletModel):
            return DefaultTokenItemInfoProvider(walletModel: walletModel)
        case .withoutDerivation(let userToken):
            let converter = StorageEntryConverter()
            let walletModelId = userToken.walletModelId
            let blockchainNetwork = userToken.blockchainNetwork

            if let token = converter.convertToToken(userToken) {
                return TokenWithoutDerivationInfoProvider(
                    id: walletModelId,
                    tokenItem: .token(token, blockchainNetwork)
                )
            }

            return TokenWithoutDerivationInfoProvider(
                id: walletModelId,
                tokenItem: .blockchain(blockchainNetwork)
            )
        }
    }
}
