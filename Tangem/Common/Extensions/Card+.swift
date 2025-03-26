//
//  Card+.swift
//  Tangem
//
//

import TangemSdk
import BlockchainSdk
import CryptoKit

extension CardDTO {
    var walletSignedHashes: Int {
        wallets.compactMap { $0.totalSignedHashes }.reduce(0, +)
    }

    var walletCurves: [EllipticCurve] {
        wallets.map { $0.curve }
    }
}
