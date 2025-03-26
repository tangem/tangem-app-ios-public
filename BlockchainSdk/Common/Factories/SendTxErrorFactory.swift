//
//  SendTxErrorFactory.swift
//  BlockchainSdk
//
//

import Foundation

struct SendTxErrorFactory {
    func make(error: Error, with tx: String? = nil) -> SendTxError {
        switch error {
        case let sendError as SendTxError:
            return sendError
        case let providerError as MultiNetworkProviderError:
            return SendTxError(error: providerError.networkError, tx: tx, lastRetryHost: providerError.lastRetryHost)
        default:
            return SendTxError(error: error, tx: tx)
        }
    }
}
