//
//  SwappingRoutable.swift
//  Tangem
//
//

import Foundation
import TangemExpress

protocol ExpressRoutable: AnyObject {
    func presentSwappingTokenList(swapDirection: ExpressTokensListViewModel.SwapDirection)
    func presentFeeSelectorView()
    func presentApproveView(provider: ExpressProvider, selectedPolicy: ExpressApprovePolicy)
    func presentProviderSelectorView()
    func presentFeeCurrency(for walletModel: WalletModel, userWalletModel: UserWalletModel)
    func presentSuccessView(data: SentExpressTransactionData)
    func closeSwappingView()
}
