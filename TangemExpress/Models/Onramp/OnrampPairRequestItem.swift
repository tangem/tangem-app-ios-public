//
//  OnrampPairRequestItem.swift
//  TangemApp
//
//

public struct OnrampPairRequestItem {
    public let fiatCurrency: OnrampFiatCurrency
    public let country: OnrampCountry
    public let destination: ExpressWallet

    public init(
        fiatCurrency: OnrampFiatCurrency,
        country: OnrampCountry,
        destination: ExpressWallet
    ) {
        self.fiatCurrency = fiatCurrency
        self.country = country
        self.destination = destination
    }
}
