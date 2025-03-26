//
//  Currency.swift
//  Tangem
//
//

import Foundation

extension CurrenciesResponse {
    struct Currency: Codable, Identifiable, CustomStringConvertible {
        let id: String
        let code: String
        let name: String
        let unit: String

        var description: String {
            let localizedName = Locale.current.localizedString(forCurrencyCode: code)?.capitalizingFirstLetter() ?? name
            return "\(localizedName) (\(code)) \(AppConstants.dashSign) \(unit)"
        }
    }
}
