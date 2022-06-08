//
//  TwinsWalletCreationServiceProvider.swift
//  Tangem
//
//  Created by Alexander Osokin on 11.05.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import BlockchainSdk

class TwinsWalletCreationServiceProvider: TwinsWalletCreationServiceProviding {
    @Injected(\.keysManager) private var keysManager: KeysManager
    
    lazy var service: TwinsWalletCreationService = {
        .init(twinFileEncoder: TwinCardTlvFileEncoder(),
              walletManagerFactory: WalletManagerFactory(config: keysManager.blockchainConfig))
    }()
}
