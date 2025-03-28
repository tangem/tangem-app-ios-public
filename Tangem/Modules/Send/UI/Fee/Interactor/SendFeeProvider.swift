//
//  SendFeeProvider.swift
//  Tangem
//
//

import Foundation
import Combine
import BlockchainSdk

protocol SendFeeProvider {
    func getFee(amount: Decimal, destination: String) -> AnyPublisher<[Fee], Error>
}

class CommonSendFeeProvider: SendFeeProvider {
    private let walletModel: WalletModel

    init(walletModel: WalletModel) {
        self.walletModel = walletModel
    }

    func getFee(amount: Decimal, destination: String) -> AnyPublisher<[Fee], any Error> {
        let amount = Amount(with: walletModel.tokenItem.blockchain, type: walletModel.tokenItem.amountType, value: amount)
        return walletModel.getFee(amount: amount, destination: destination)
    }
}
