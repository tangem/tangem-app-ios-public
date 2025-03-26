//
//  OnrampPaymentMethodRowViewData.swift
//  TangemApp
//
//

import Foundation

struct OnrampPaymentMethodRowViewData: Identifiable {
    let id: String
    let name: String
    let iconURL: URL?
    let isSelected: Bool

    let action: () -> Void
}

// MARK: - Hashable

extension OnrampPaymentMethodRowViewData: Hashable {
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.hashValue == rhs.hashValue
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
        hasher.combine(iconURL)
        hasher.combine(isSelected)
    }
}
