//
//  DerivationConfig.swift
//  BlockchainSdk
//
//

import Foundation
import TangemSdk

public protocol DerivationConfig {
    func derivationPath(for blockchain: Blockchain) -> String
}

extension DerivationConfig {
    func derivationPath(for blockchain: Blockchain) -> DerivationPath {
        try! DerivationPath(rawPath: derivationPath(for: blockchain))
    }
}
