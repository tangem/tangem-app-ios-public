//
//  DefaultHeaderView.swift
//  Tangem
//
//

import SwiftUI

struct DefaultHeaderView: View {
    private let title: String

    init(_ title: String) {
        self.title = title
    }

    var body: some View {
        Text(title)
            .style(Fonts.Bold.footnote, color: Colors.Text.tertiary)
    }
}
