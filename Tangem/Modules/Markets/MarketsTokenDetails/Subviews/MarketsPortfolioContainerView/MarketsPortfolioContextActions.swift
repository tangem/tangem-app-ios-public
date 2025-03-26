//
//  MarketsPortfolioContextActions.swift
//  Tangem
//
//

import Foundation

protocol MarketsPortfolioContextActionsProvider: AnyObject {
    func buildContextActions(tokenItem: TokenItem, walletModelId: WalletModelId, userWalletId: UserWalletId) -> [TokenActionType]
}

protocol MarketsPortfolioContextActionsDelegate: AnyObject {
    func showContextAction(for viewModel: MarketsPortfolioTokenItemViewModel)
    func didTapContextAction(_ action: TokenActionType, walletModelId: WalletModelId, userWalletId: UserWalletId)
}
