//
//  SendTransactionDispatcher.swift
//  Tangem
//
//

import Foundation
import Combine
import BlockchainSdk

class SendTransactionDispatcher {
    private let walletModel: WalletModel
    private let transactionSigner: TangemSigner

    init(
        walletModel: WalletModel,
        transactionSigner: TangemSigner
    ) {
        self.walletModel = walletModel
        self.transactionSigner = transactionSigner
    }
}

// MARK: - TransactionDispatcher

extension SendTransactionDispatcher: TransactionDispatcher {
    func send(transaction: SendTransactionType) async throws -> TransactionDispatcherResult {
        guard case .transfer(let transferTransaction) = transaction else {
            throw TransactionDispatcherResult.Error.transactionNotFound
        }

        let mapper = TransactionDispatcherResultMapper()

        do {
            let hash = try await walletModel.transactionSender.send(transferTransaction, signer: transactionSigner).async()
            walletModel.updateAfterSendingTransaction()
            let signer = transactionSigner.latestSigner.value
            return mapper.mapResult(hash, blockchain: walletModel.blockchainNetwork.blockchain, signer: signer)
        } catch {
            throw mapper.mapError(error, transaction: transaction)
        }
    }
}
