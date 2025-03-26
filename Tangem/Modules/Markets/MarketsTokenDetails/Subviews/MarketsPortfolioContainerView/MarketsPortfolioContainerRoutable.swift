//
//  MarketsPortfolioContainerRoutable.swift
//  Tangem
//
//

import Foundation

protocol MarketsPortfolioContainerRoutable: AnyObject {
    func openReceive(walletModel: WalletModel)
    func openBuyCryptoIfPossible(for walletModel: WalletModel, with userWalletModel: UserWalletModel)
    func openExchange(for walletModel: WalletModel, with userWalletModel: UserWalletModel)
}
