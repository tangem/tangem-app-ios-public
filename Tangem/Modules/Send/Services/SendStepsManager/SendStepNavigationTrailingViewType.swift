//
//  SendStepNavigationTrailingViewType.swift
//  Tangem
//
//

import Foundation

enum SendStepNavigationTrailingViewType: Hashable {
    case qrCodeButton(action: () -> Void)

    static func == (lhs: SendStepNavigationTrailingViewType, rhs: SendStepNavigationTrailingViewType) -> Bool {
        lhs.hashValue == rhs.hashValue
    }

    func hash(into hasher: inout Hasher) {
        switch self {
        case .qrCodeButton:
            hasher.combine("qrCodeButton")
        }
    }
}
