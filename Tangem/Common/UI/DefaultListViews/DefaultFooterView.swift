//
//  DefaultFooterView.swift
//  Tangem
//
//

import SwiftUI

struct DefaultFooterView: View {
    private let title: String

    init(_ title: String) {
        self.title = title
    }

    var body: some View {
        Text(title)
            .style(Fonts.Regular.caption1, color: Colors.Text.tertiary)
            // We've calculation height problem here
            // SUI BottomSheet can't do it normally without this `fixedSize`
            .fixedSize(horizontal: false, vertical: true)
    }
}
