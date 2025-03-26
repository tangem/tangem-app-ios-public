//
//  LocalizationIconParser.swift
//  Tangem
//
//

import Foundation

struct LocalizationIconParser {
    private let imageSeparator = "%image%"

    func parse(_ localizedString: String) throws -> (prefix: String, suffix: String) {
        let components = localizedString.components(separatedBy: imageSeparator)
        if components.count != 2 {
            throw "Not supported localized string"
        }

        return (
            components[0].trimmingCharacters(in: .whitespaces),
            components[1].trimmingCharacters(in: .whitespaces)
        )
    }
}
