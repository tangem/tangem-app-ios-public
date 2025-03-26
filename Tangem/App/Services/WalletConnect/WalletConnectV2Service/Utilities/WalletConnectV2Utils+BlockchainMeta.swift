//
//  WalletConnectV2Utils+BlockchainMeta.swift
//  Tangem
//
//

import BlockchainSdk

extension WalletConnectV2Utils {
    struct BlockchainMeta {
        let id: String
        let currencySymbol: String
        let displayName: String
    }
}

extension WalletConnectV2Utils.BlockchainMeta {
    init?(from blockchain: BlockchainSdk.Blockchain?) {
        if let blockchain {
            id = blockchain.networkId
            currencySymbol = blockchain.currencySymbol
            displayName = blockchain.displayName
        } else {
            return nil
        }
    }
}
