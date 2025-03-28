//
//  TokenWithoutDerivationInfoProvider.swift
//  Tangem
//
//

import Foundation
import Combine
import BlockchainSdk

class TokenWithoutDerivationInfoProvider: TokenItemInfoProvider {
    let id: Int
    let tokenItem: TokenItem

    let hasPendingTransactions: Bool = false
    let balance: String = Localization.walletBalanceMissingDerivation
    let fiatBalance: String = BalanceFormatter.defaultEmptyBalanceString
    var isZeroBalanceValue: Bool { true }
    var quote: TokenQuote? { nil }

    var tokenItemState: TokenItemViewState = .noDerivation
    var tokenItemStatePublisher: AnyPublisher<TokenItemViewState, Never> { .just(output: tokenItemState) }
    var actionsUpdatePublisher: AnyPublisher<Void, Never> { .just(output: ()) }
    var isStakedPublisher: AnyPublisher<Bool, Never> { .just(output: false) }

    init(id: Int, tokenItem: TokenItem) {
        self.id = id
        self.tokenItem = tokenItem
    }
}
