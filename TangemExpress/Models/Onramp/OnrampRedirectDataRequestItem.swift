//
//  OnrampRedirectDataRequestItem.swift
//  TangemApp
//
//

public struct OnrampRedirectDataRequestItem {
    public let quotesItem: OnrampQuotesRequestItem
    public let redirectSettings: OnrampRedirectSettings

    public init(
        quotesItem: OnrampQuotesRequestItem,
        redirectSettings: OnrampRedirectSettings
    ) {
        self.quotesItem = quotesItem
        self.redirectSettings = redirectSettings
    }
}
