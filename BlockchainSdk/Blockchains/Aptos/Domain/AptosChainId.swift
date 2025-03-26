//
//  AptosChainId.swift
//  BlockchainSdk
//
//

import Foundation

/// https://aptos.dev/nodes/networks/
enum AptosChainId {
    case mainnet
    case testnet
    case custom(UInt32)

    var rawValue: UInt32 {
        switch self {
        case .mainnet:
            return 1
        case .testnet:
            return 2
        case .custom(let id):
            return id
        }
    }
}
