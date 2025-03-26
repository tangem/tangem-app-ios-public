//
//  ExpressFeeRowData.swift
//  Tangem
//
//

import Foundation

struct ExpressFeeRowData: Identifiable {
    var id: Int { hashValue }

    let title: String
    let subtitle: String
    let action: (() -> Void)?

    init(title: String, subtitle: String, action: (() -> Void)? = nil) {
        self.title = title
        self.subtitle = subtitle
        self.action = action
    }
}

extension ExpressFeeRowData: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
        hasher.combine(subtitle)
    }

    static func == (lhs: ExpressFeeRowData, rhs: ExpressFeeRowData) -> Bool {
        lhs.id == rhs.id
    }
}
