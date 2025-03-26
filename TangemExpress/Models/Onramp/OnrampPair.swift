//
//  OnrampPair.swift
//  TangemApp
//
//

public struct OnrampPair: Hashable {
    public let fiatCurrencyCode: String?
    public let currency: ExpressCurrency
    public let providers: [OnrampProvider]
}
