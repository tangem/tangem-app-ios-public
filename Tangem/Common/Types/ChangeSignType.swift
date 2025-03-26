//
//  ChangeSignType.swift
//  Tangem
//
//

import SwiftUI

enum ChangeSignType: Int, Hashable {
    case positive
    case neutral
    case negative

    init(from value: Decimal) {
        if value == .zero {
            self = .neutral
        } else if value > 0 {
            self = .positive
        } else {
            self = .negative
        }
    }

    var imageType: ImageType? {
        switch self {
        case .positive:
            return Assets.quotePositive
        case .neutral:
            return Assets.quoteNeutral
        case .negative:
            return Assets.quoteNegative
        }
    }

    var textColor: Color {
        switch self {
        case .positive:
            return Colors.Text.accent
        case .neutral:
            return Colors.Text.tertiary
        case .negative:
            return Colors.Text.warning
        }
    }
}
