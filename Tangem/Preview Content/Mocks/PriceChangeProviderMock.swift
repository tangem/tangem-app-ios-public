//
//  PriceChangeProviderMock.swift
//  Tangem
//
//  Created by Andrew Son on 01/08/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import Combine
import BlockchainSdk

class TokenQuotesRepositoryMock: TokenQuotesRepository {
    var pricesPublisher: AnyPublisher<Quotes, Never> { .just(output: .init()) }

    func quote(for item: TokenItem) -> TokenQuote? { nil }
    func quote(for coinId: String) -> TokenQuote? { nil }

    func loadQuotes(coinIds: [String]) -> AnyPublisher<[TokenQuote], Never> { .just(output: []) }
    func updateQuotes(coinIds: [String]) {}
}
