//
//  UserWalletId.swift
//  Tangem
//
//

import Foundation
import CryptoKit
import TangemSdk

struct UserWalletId: Hashable {
    let value: Data

    var stringValue: String { value.hexString }
}

extension UserWalletId {
    init(with walletPublicKey: Data) {
        let keyHash = walletPublicKey.getSha256()
        let key = SymmetricKey(data: keyHash)
        let authenticationCode = HMAC<SHA256>.authenticationCode(for: Constants.message, using: key)
        value = Data(authenticationCode)
    }
}

private extension UserWalletId {
    enum Constants {
        static let message = "UserWalletID".data(using: .utf8)!
    }
}
