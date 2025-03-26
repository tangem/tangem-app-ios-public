//
//  TransactionDispatcherFactory.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk

struct TransactionDispatcherFactory {
    let walletModel: WalletModel
    let signer: TangemSigner

    func makeSendDispatcher() -> TransactionDispatcher {
        if walletModel.isDemo {
            return DemoSendTransactionDispatcher(walletModel: walletModel, transactionSigner: signer)
        }

        return SendTransactionDispatcher(walletModel: walletModel, transactionSigner: signer)
    }
}
