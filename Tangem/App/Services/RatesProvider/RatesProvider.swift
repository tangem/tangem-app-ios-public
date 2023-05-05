//
//  RatesProvider.swift
//  Tangem
//
//  Created by Andrew Son on 27/04/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

protocol RatesProvider {
    func refreshRates() async throws
    func loadRates(cryptos: [String], fiatCode: String) async throws
    func rate(crypto: String, fiat: String) async throws -> Decimal
}

class DefaultRatesProvider {
    var rates: [String: [Decimal]] = [:]
}

extension DefaultRatesProvider: RatesProvider {
    func refreshRates() async throws {
        // TODO: Will be implemented in https://tangem.atlassian.net/browse/IOS-3524
    }

    func loadRates(cryptos: [String], fiatCode: String) async throws {
        // TODO: Will be implemented in https://tangem.atlassian.net/browse/IOS-3524
    }

    func rate(crypto: String, fiat: String) async throws -> Decimal {
        // TODO: Will be implemented in https://tangem.atlassian.net/browse/IOS-3524

        try await Task.sleep(seconds: 5)

        return 1.3
    }
}

private struct RatesProviderKey: InjectionKey {
    static var currentValue: RatesProvider = DefaultRatesProvider()
}

extension InjectedValues {
    var ratesProvider: RatesProvider {
        get { Self[RatesProviderKey.self] }
        set { Self[RatesProviderKey.self] = newValue }
    }
}
