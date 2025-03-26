//
//  OnrampRedirectData.swift
//  TangemApp
//
//

public struct OnrampRedirectData: Hashable, Decodable {
    public let fromCurrencyCode: String
    public let toContractAddress: String
    public let toNetwork: String
    public let paymentMethod: String
    public let countryCode: String
    public let fromAmount: String
    public let toAmount: String?
    public let toDecimals: Int
    public let providerId: String
    public let toAddress: String
    public let redirectUrl: String
    public let language: String?
    public let theme: String?
    public let requestId: String
    public let externalTxId: String
    public let widgetUrl: String
}
