//
//  OnrampProvidersPaymentViewData.swift
//  TangemApp
//
//

import Foundation

struct OnrampProvidersPaymentViewData: Identifiable {
    var id: Int { hashValue }

    let name: String
    let iconURL: URL
    let action: () -> Void
}

// MARK: - Hashable

extension OnrampProvidersPaymentViewData: Hashable {
    static func == (lhs: OnrampProvidersPaymentViewData, rhs: OnrampProvidersPaymentViewData) -> Bool {
        lhs.hashValue == rhs.hashValue
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(iconURL)
    }
}
