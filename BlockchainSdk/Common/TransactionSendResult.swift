//
//  TransactionSendResult.swift
//  BlockchainSdk
//
//

import Foundation

public struct TransactionSendResult: Hashable {
    public let hash: String

    init(hash: String) {
        self.hash = hash
    }
}

public struct SendTxError: LocalizedError {
    public let error: Error
    public let tx: String?
    public let lastRetryHost: String?

    public var errorDescription: String? {
        error.localizedDescription
    }

    var description: String {
        """
            description: \(error.localizedDescription)
            tx: \(tx ?? "undefined")
            lastRetryHost: \(lastRetryHost ?? "undefined")
        """
    }

    // MARK: - Init

    public init(error: Error, tx: String? = nil, lastRetryHost: String? = nil) {
        self.error = error
        self.tx = tx
        self.lastRetryHost = lastRetryHost
    }
}
