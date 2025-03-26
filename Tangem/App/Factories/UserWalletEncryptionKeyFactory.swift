//
//  UserWalletEncryptionKeyFactory.swift
//  Tangem
//
//

import Foundation

class UserWalletEncryptionKeyFactory {
    func encryptionKey(for userWallet: StoredUserWallet) -> UserWalletEncryptionKey? {
        let cardInfo = userWallet.cardInfo()
        let config = UserWalletConfigFactory(cardInfo).makeConfig()

        guard let userWalletIdSeed = config.userWalletIdSeed else { return nil }

        return UserWalletEncryptionKey(userWalletIdSeed: userWalletIdSeed)
    }
}
