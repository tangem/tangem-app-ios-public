//
//  OnrampPaymentMethodRowView.swift
//  Tangem
//
//

import SwiftUI

struct OnrampPaymentMethodRowView: View {
    let data: OnrampPaymentMethodRowViewData

    var body: some View {
        Button(action: data.action) {
            content
        }
        .buttonStyle(.plain)
    }

    private var content: some View {
        HStack(spacing: 12) {
            iconView

            titleView

            Spacer()
        }
        .padding(.vertical, 16)
        .padding(.horizontal, 14)
        .overlay { overlay }
        .contentShape(Rectangle())
    }

    @ViewBuilder
    private var overlay: some View {
        if data.isSelected {
            Color.clear.overlay {
                RoundedRectangle(cornerRadius: 14)
                    .stroke(Colors.Icon.accent, lineWidth: 1)
            }
            .padding(1)
            .overlay {
                RoundedRectangle(cornerRadius: 14)
                    .stroke(Colors.Icon.accent.opacity(0.15), lineWidth: 2.5)
            }
            .padding(2.5)
        }
    }

    private var iconView: some View {
        IconView(
            url: data.iconURL,
            size: CGSize(width: 36, height: 36),
            cornerRadius: 0,
            // Kingfisher shows a gray background even if it has a cached image
            forceKingfisher: false
        )
    }

    private var titleView: some View {
        Text(data.name)
            .style(
                Fonts.Bold.subheadline,
                color: data.isSelected ? Colors.Text.primary1 : Colors.Text.secondary
            )
            .lineLimit(1)
    }
}

#Preview {
    OnrampPaymentMethodRowView(data: .init(id: "card", name: "Card", iconURL: nil, isSelected: true, action: {}))
}
