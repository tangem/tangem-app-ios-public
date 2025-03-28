//
//  Finality.swift
//  BlockchainSdk
//
//

import Foundation

extension NEARNetworkParams {
    enum Finality: String, Encodable {
        /// Uses the latest block recorded on the node that responded to your query
        /// (<1 second delay after the transaction is submitted).
        case optimistic
        /// Uses a block that has been validated on at least 66% of the nodes in the network
        /// (usually takes 2 blocks / approx. 2 second delay).
        case final
    }
}
