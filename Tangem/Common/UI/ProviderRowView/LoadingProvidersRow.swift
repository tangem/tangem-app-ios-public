//
//  LoadingProvidersRow.swift
//  Tangem
//
//

import SwiftUI

struct LoadingProvidersRow: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(Localization.expressProvider)
                .style(Fonts.Regular.footnote, color: Colors.Text.secondary)

            HStack(spacing: 4) {
                progressView

                Text(Localization.expressFetchBestRates)
                    .style(Fonts.Regular.subheadline, color: Colors.Text.tertiary)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }

    @ViewBuilder
    private var progressView: some View {
        ProgressView()
            .controlSize(.small)
            .frame(width: 16, height: 16)
            .padding(.vertical, 2)
    }
}

#Preview {
    LoadingProvidersRow()
        .padding()
        .background(Colors.Background.secondary)
}
