//
//  DateFormatter+.swift
//  BlockchainSdk
//
//

import Foundation

extension DateFormatter {
    static let iso8601withFractionalSeconds: ISO8601DateFormatter = {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        return formatter
    }()

    static let iso8601: ISO8601DateFormatter = {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime]
        return formatter
    }()

    convenience init(withFormat format: String, locale: String) {
        self.init()
        dateFormat = format
        self.locale = Locale(identifier: locale)
    }
}
