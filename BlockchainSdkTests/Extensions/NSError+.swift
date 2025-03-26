//
//  NSError+.swift
//  BlockchainSdkTests
//
//

import Foundation
import BlockchainSdk

extension NSError {
    static func makeUnsupportedCurveError(for blockchain: BlockchainSdk.Blockchain) -> Error {
        return NSError(
            domain: "com.tangem.BlockchainSDKTests",
            code: -1,
            userInfo: [
                NSLocalizedDescriptionKey: "Unsupported curve \"\(blockchain.curve)\" for blockchain \"\(blockchain)\"",
            ]
        )
    }

    static func makeUnsupportedBlockchainError(for blockchain: BlockchainSdk.Blockchain) -> Error {
        return NSError(
            domain: "com.tangem.BlockchainSDKTests",
            code: -2,
            userInfo: [
                NSLocalizedDescriptionKey: "Unsupported blockchain \"\(blockchain)\"",
            ]
        )
    }
}
