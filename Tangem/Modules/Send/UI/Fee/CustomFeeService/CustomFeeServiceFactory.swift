//
//  CustomFeeServiceFactory.swift
//  Tangem
//
//

import Foundation

struct CustomFeeServiceFactory {
    private let walletModel: WalletModel

    init(walletModel: WalletModel) {
        self.walletModel = walletModel
    }

    func makeService() -> CustomFeeService? {
        let blockchain = walletModel.blockchainNetwork.blockchain

        if case .bitcoin = blockchain,
           let bitcoinTransactionFeeCalculator = walletModel.bitcoinTransactionFeeCalculator {
            return CustomBitcoinFeeService(
                tokenItem: walletModel.tokenItem,
                feeTokenItem: walletModel.feeTokenItem,
                bitcoinTransactionFeeCalculator: bitcoinTransactionFeeCalculator
            )
        }

        if case .kaspa = blockchain {
            return CustomKaspaFeeService(feeTokenItem: walletModel.feeTokenItem)
        }

        if blockchain.isEvm {
            return CustomEvmFeeService(feeTokenItem: walletModel.feeTokenItem)
        }

        return nil
    }
}
