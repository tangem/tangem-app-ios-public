//
//  BlockchainFactory.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 06.12.2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation
import TangemSdk

public class WalletManagerFactory {
    public func makeWalletManager(from card: Card) -> WalletManager? {
        guard let blockchainName = card.cardData?.blockchainName, let walletPublicKey = card.walletPublicKey else {
            assertionFailure()
            return nil
        }
        
        if blockchainName.contains("btc") || blockchainName.contains("bitcoin") {
            let walletConfig = WalletConfig(allowFeeSelection: true, allowFeeInclusion: true)
            return BitcoinWalletManager(cardId: card.cardId, walletPublicKey: walletPublicKey, walletConfig: walletConfig, isTestnet: blockchainName.contains("test") )
        }
        return nil
    }
}
