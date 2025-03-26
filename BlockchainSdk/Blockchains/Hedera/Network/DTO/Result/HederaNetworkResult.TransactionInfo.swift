//
//  HederaNetworkResult.TransactionInfo.swift
//  BlockchainSdk
//
//

import Foundation
import enum Hedera.Status

extension HederaNetworkResult {
    /// Used by the Consensus network layer.
    struct TransactionInfo {
        let status: Hedera.Status
        let hash: String
    }
}
