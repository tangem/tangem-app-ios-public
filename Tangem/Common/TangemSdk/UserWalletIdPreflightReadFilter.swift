//
//  UserWalletIdPreflightReadFilter.swift
//  Tangem
//
//

import Foundation
import TangemSdk

struct UserWalletIdPreflightReadFilter: PreflightReadFilter {
    private let expectedUserWalletId: UserWalletId

    init(userWalletId: UserWalletId) {
        expectedUserWalletId = userWalletId
    }

    func onCardRead(_ card: Card, environment: SessionEnvironment) throws {}

    func onFullCardRead(_ card: Card, environment: SessionEnvironment) throws {
        guard let firstPublicKey = card.wallets.first?.publicKey else {
            // We can safely reset this card because there are no wallets in it. Case with cardLinked status without any wallets
            return
        }

        let userWalletId = UserWalletId(with: firstPublicKey)
        if userWalletId != expectedUserWalletId {
            throw TangemSdkError.walletNotFound
        }
    }
}
