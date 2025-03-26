//
//  ExpressPendingTransactionRepository.swift
//  TangemExpress
//
//

import Foundation
import Combine
import TangemExpress

protocol ExpressPendingTransactionRepository: AnyObject {
    var transactions: [ExpressPendingTransactionRecord] { get }
    var transactionsPublisher: AnyPublisher<[ExpressPendingTransactionRecord], Never> { get }

    func updateItems(_ items: [ExpressPendingTransactionRecord])
    func swapTransactionDidSend(_ txData: SentExpressTransactionData, userWalletId: String)
    func hideSwapTransaction(with id: String)
}

private struct ExpressPendingTransactionRepositoryKey: InjectionKey {
    static var currentValue: ExpressPendingTransactionRepository = CommonExpressPendingTransactionRepository()
}

extension InjectedValues {
    var expressPendingTransactionsRepository: ExpressPendingTransactionRepository {
        get { Self[ExpressPendingTransactionRepositoryKey.self] }
        set { Self[ExpressPendingTransactionRepositoryKey.self] = newValue }
    }
}
