//
//  SendDestinationTransactionHistoryProvider.swift
//  Tangem
//
//

import Foundation
import Combine
import BlockchainSdk

protocol SendDestinationTransactionHistoryProvider {
    var transactionHistoryPublisher: AnyPublisher<[TransactionRecord], Never> { get }
}

class CommonSendDestinationTransactionHistoryProvider {
    private let walletModel: WalletModel

    init(walletModel: WalletModel) {
        self.walletModel = walletModel
    }
}

extension CommonSendDestinationTransactionHistoryProvider: SendDestinationTransactionHistoryProvider {
    var transactionHistoryPublisher: AnyPublisher<[TransactionRecord], Never> {
        walletModel.transactionHistoryPublisher.map { state in
            guard case .loaded(let items) = state else {
                return []
            }

            return items
        }
        .eraseToAnyPublisher()
    }
}
