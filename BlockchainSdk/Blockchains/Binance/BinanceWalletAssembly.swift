//
//  BinanceWalletAssembly.swift
//  BlockchainSdk
//
//

import Foundation
import TangemSdk

struct BinanceWalletAssembly: WalletManagerAssembly {
    func make(with input: WalletManagerAssemblyInput) throws -> WalletManager {
        return try BinanceWalletManager(wallet: input.wallet).then {
            $0.txBuilder = try BinanceTransactionBuilder(walletPublicKey: input.wallet.publicKey.blockchainKey, isTestnet: input.blockchain.isTestnet)
            $0.networkService = BinanceNetworkService(isTestNet: input.blockchain.isTestnet)
        }
    }
}
