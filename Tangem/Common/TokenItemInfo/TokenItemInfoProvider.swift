//
//  TokenItemInfoProvider.swift
//  Tangem
//
//

import Combine
import BlockchainSdk

protocol TokenItemInfoProvider: AnyObject {
    var id: Int { get }
    var tokenItemState: TokenItemViewState { get }
    var tokenItemStatePublisher: AnyPublisher<TokenItemViewState, Never> { get }
    var tokenItem: TokenItem { get }
    var hasPendingTransactions: Bool { get }
    var balance: String { get }
    var isZeroBalanceValue: Bool { get }
    var fiatBalance: String { get }
    var quote: TokenQuote? { get }
    var actionsUpdatePublisher: AnyPublisher<Void, Never> { get }
    var isStakedPublisher: AnyPublisher<Bool, Never> { get }
}
