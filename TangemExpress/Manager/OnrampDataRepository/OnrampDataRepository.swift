//
//  OnrampDataRepository.swift
//  TangemApp
//
//

public protocol OnrampDataRepository: Actor {
    func paymentMethods() async throws -> [OnrampPaymentMethod]
    func countries() async throws -> [OnrampCountry]
    func currencies() async throws -> [OnrampFiatCurrency]
}
