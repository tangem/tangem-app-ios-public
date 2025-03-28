//
//  StoriesConstants.swift
//  Tangem
//
//

import Foundation

enum StoriesConstants {
    enum TextType {
        case title
        case description

        var timeOffset: Double {
            switch self {
            case .title:
                return 0
            case .description:
                return 0.035
            }
        }
    }

    enum TextBlockAppearance {
        case almostImmediate
        case minorDelay

        var time: Double {
            switch self {
            case .almostImmediate:
                return 0.05
            case .minorDelay:
                return 0.12
            }
        }
    }

    static let textAppearanceDuration = 0.2
}
