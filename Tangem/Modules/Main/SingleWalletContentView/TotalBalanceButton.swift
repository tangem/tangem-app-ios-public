//
//  TotalBalanceButton.swift
//  Tangem
//
//  Created by Andrew Son on 07/02/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

struct TotalBalanceButton {
    let title: String
    let icon: ImageType
    let action: () -> Void
}

extension TotalBalanceButton: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
        hasher.combine(icon)
    }

    static func == (lhs: TotalBalanceButton, rhs: TotalBalanceButton) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
}

extension TotalBalanceButton: Identifiable {
    var id: Int { hashValue }
}
