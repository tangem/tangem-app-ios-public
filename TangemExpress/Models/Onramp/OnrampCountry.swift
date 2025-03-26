//
//  OnrampCountry.swift
//  TangemApp
//
//

public struct OnrampCountry: Hashable {
    public let identity: OnrampIdentity
    public let currency: OnrampFiatCurrency
    public let onrampAvailable: Bool

    public init(identity: OnrampIdentity, currency: OnrampFiatCurrency, onrampAvailable: Bool) {
        self.identity = identity
        self.currency = currency
        self.onrampAvailable = onrampAvailable
    }
}
