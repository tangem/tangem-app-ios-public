//
//  MainHeaderSubtitleInfo.swift
//  Tangem
//
//

import Foundation
import SwiftUI

struct MainHeaderSubtitleInfo {
    let messages: [String]
    let formattingOption: MainHeaderSubtitleFormattingOption

    static let empty: MainHeaderSubtitleInfo = .init(messages: [], formattingOption: .default)
}

extension MainHeaderSubtitleInfo {
    enum MainHeaderSubtitleFormattingOption {
        case `default`
        case error

        var textColor: Color {
            switch self {
            case .default: return Colors.Text.tertiary
            case .error: return Colors.Text.attention
            }
        }

        var font: Font {
            Fonts.Regular.caption2
        }
    }
}
