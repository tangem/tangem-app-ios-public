//
//  TransactionDispatcherResultMapper.swift
//  Tangem
//
//

import Foundation
import Combine
import TangemSdk
import BlockchainSdk

struct TransactionDispatcherResultMapper {
    func mapResult(
        _ result: TransactionSendResult,
        blockchain: Blockchain,
        signer: Card?
    ) -> TransactionDispatcherResult {
        let factory = ExternalLinkProviderFactory()
        let provider = factory.makeProvider(for: blockchain)
        let explorerUrl = provider.url(transaction: result.hash)

        let signerType = signer.map {
            RingUtil().isRing(batchId: $0.batchId) ? Analytics.ParameterValue.ring.rawValue : Analytics.ParameterValue.card.rawValue
        } ?? "unknown"

        return TransactionDispatcherResult(hash: result.hash, url: explorerUrl, signerType: signerType)
    }

    func mapError(_ error: Error, transaction: SendTransactionType) -> TransactionDispatcherResult.Error {
        let sendError = error as? SendTxError ?? SendTxError(error: error)
        let internalError = sendError.error

        if internalError.toTangemSdkError().isUserCancelled {
            return .userCancelled
        }

        return .sendTxError(transaction: transaction, error: sendError)
    }
}
