//
//  OnrampIdentityMock.swift
//  TangemApp
//
//

import TangemExpress

extension OnrampIdentity {
    static let usa = OnrampIdentity(name: "USA", code: "US", image: IconURLBuilder().fiatIconURL(currencyCode: "USD"))
    static let pt = OnrampIdentity(name: "Portugal", code: "PT", image: IconURLBuilder().fiatIconURL(currencyCode: "EUR"))
}
