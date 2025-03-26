//
//  OnrampFiatCurrency.swift
//  TangemApp
//
//

public struct OnrampFiatCurrency: Hashable {
    public let identity: OnrampIdentity
    /// Max fraction digits
    public let precision: Int

    public init(identity: OnrampIdentity, precision: Int) {
        self.identity = identity
        self.precision = precision
    }
}
