//
//  StorageEntry.swift
//  Tangem
//
//

import Foundation
import struct BlockchainSdk.Token

struct StorageEntry: Hashable {
    let blockchainNetwork: BlockchainNetwork
    var tokens: [Token]

    init(blockchainNetwork: BlockchainNetwork, tokens: [Token]) {
        self.blockchainNetwork = blockchainNetwork
        self.tokens = tokens
    }

    init(blockchainNetwork: BlockchainNetwork, token: Token?) {
        self.blockchainNetwork = blockchainNetwork

        if let token = token {
            tokens = [token]
        } else {
            tokens = []
        }
    }
}

extension StorageEntry {
    var walletModelIds: [WalletModel.ID] {
        let mainCoinId = WalletModel.Id(blockchainNetwork: blockchainNetwork, amountType: .coin).id
        let tokenCoinIds = tokens.map {
            WalletModel.Id(blockchainNetwork: blockchainNetwork, amountType: .token(value: $0)).id
        }
        return [mainCoinId] + tokenCoinIds
    }
}
