//
//  TwinPreflightReadFilter.swift
//  Tangem
//
//

import Foundation
import TangemSdk

struct TwinPreflightReadFilter: PreflightReadFilter {
    private let twinKey: TwinKey

    init(twinKey: TwinKey) {
        self.twinKey = twinKey
    }

    func onCardRead(_ card: Card, environment: SessionEnvironment) throws {}

    func onFullCardRead(_ card: Card, environment: SessionEnvironment) throws {
        guard let firstPublicKey = card.wallets.first?.publicKey,
              firstPublicKey == twinKey.key1 || firstPublicKey == twinKey.key2 else {
            throw TangemSdkError.walletNotFound
        }
    }
}
