//
//  VeChainNetworkParams.Transaction.swift
//  BlockchainSdk
//
//

import Foundation

extension VeChainNetworkParams {
    struct Transaction: Encodable {
        /// A hex form of encoded transaction.
        let raw: String
    }
}
