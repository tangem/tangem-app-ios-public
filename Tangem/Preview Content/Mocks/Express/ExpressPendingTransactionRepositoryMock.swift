//
//  ExpressPendingTransactionRepositoryMock.swift
//  Tangem
//
//

import Foundation
import Combine

class ExpressPendingTransactionRepositoryMock: ExpressPendingTransactionRepository {
    var transactions: [ExpressPendingTransactionRecord] { [] }

    var transactionsPublisher: AnyPublisher<[ExpressPendingTransactionRecord], Never> { .just(output: []) }

    func updateItems(_ items: [ExpressPendingTransactionRecord]) {}

    func swapTransactionDidSend(_ txData: SentExpressTransactionData, userWalletId: String) {}

    func hideSwapTransaction(with id: String) {}
}
