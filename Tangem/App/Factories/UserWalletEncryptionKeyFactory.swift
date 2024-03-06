//
//  UserWalletEncryptionKeyFactory.swift
//  Tangem
//
//  Created by Andrey Chukavin on 21.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

class UserWalletEncryptionKeyFactory {
    #warning("TODO: Add ability to create key based on UserWallet")

    func encryptionKey(from cardInfo: CardInfo) -> UserWalletEncryptionKey? {
        let config = UserWalletConfigFactory(cardInfo).makeConfig()

        guard let seed = config.userWalletIdSeed else { return nil }

        return encryptionKey(from: seed)
    }

    func encryptionKey(from userWalletIdSeed: Data) -> UserWalletEncryptionKey? {
        return UserWalletEncryptionKey(with: userWalletIdSeed)
    }
}
