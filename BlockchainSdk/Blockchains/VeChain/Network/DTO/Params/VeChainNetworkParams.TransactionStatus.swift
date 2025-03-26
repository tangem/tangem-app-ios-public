//
//  VeChainNetworkParams.TransactionStatus.swift
//  BlockchainSdk
//
//

import Foundation

extension VeChainNetworkParams {
    struct TransactionStatus {
        let hash: String
        let includePending: Bool
        let rawOutput: Bool
    }
}
