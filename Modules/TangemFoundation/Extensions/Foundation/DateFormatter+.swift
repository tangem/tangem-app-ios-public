//
//  DateFormatter+.swift
//  TangemFoundation
//
//

import Foundation

public extension DateFormatter {
    convenience init(dateFormat: String) {
        self.init()
        self.dateFormat = dateFormat
    }
}
