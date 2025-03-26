//
//  BottomSheetHeaderView.swift
//  Tangem
//
//

import Foundation
import SwiftUI

struct BottomSheetHeaderView: View {
    private let title: String
    private let subtitle: String?

    init(title: String, subtitle: String? = nil) {
        self.title = title
        self.subtitle = subtitle
    }

    var body: some View {
        VStack(spacing: 14) {
            Text(title)
                .style(Fonts.Bold.body, color: Colors.Text.primary1)

            if let subtitle {
                Text(subtitle)
                    .style(Fonts.Regular.footnote, color: Colors.Text.secondary)
            }
        }
        .frame(maxWidth: .infinity)
        .multilineTextAlignment(.center)
        .padding(.vertical, 12)
    }
}
