//
//  TokenDetailsRoutable.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk

protocol TokenDetailsRoutable: AnyObject {
    func dismiss()
    func openFeeCurrency(for model: WalletModel, userWalletModel: UserWalletModel)
    func openPendingExpressTransactionDetails(
        for pendingTransaction: PendingExpressTransaction,
        tokenItem: TokenItem,
        pendingTransactionsManager: PendingExpressTransactionsManager
    )
}
