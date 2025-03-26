//
//  StakingPendingTransactionsRepository.swift
//  Tangem
//
//

import Foundation
import Combine

public protocol StakingPendingTransactionsRepository {
    var recordsPublisher: AnyPublisher<Set<StakingPendingTransactionRecord>, Never> { get }
    var records: Set<StakingPendingTransactionRecord> { get }

    func transactionDidSent(action: StakingAction, integrationId: String)
    func checkIfConfirmed(balances: [StakingBalanceInfo])
    func hasPending(balance: StakingBalanceInfo) -> Bool
}
