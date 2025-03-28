//
//  OnrampManager.swift
//  TangemApp
//
//

public protocol OnrampManager: Actor {
    /// Initial loading country by IP
    /// If the country has already been setup then return nil
    func initialSetupCountry() async throws -> OnrampCountry

    /// User has selected a currency. We are preparing onramp providers
    func setupProviders(request: OnrampPairRequestItem) async throws

    /// The user changed the amount. We upload providers quotes
    func setupQuotes(amount: Decimal) async throws

    /// Load the data to perform the onramp action
    func loadOnrampData(request: OnrampQuotesRequestItem) async throws -> OnrampRedirectData
}

public enum OnrampManagerError: LocalizedError {
    case notImplement
}
