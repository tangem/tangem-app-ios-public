//
//  OnrampPaymentMethod.swift
//  TangemApp
//
//

public struct OnrampPaymentMethod: Hashable {
    public let identity: OnrampIdentity

    public init(identity: OnrampIdentity) {
        self.identity = identity
    }
}
