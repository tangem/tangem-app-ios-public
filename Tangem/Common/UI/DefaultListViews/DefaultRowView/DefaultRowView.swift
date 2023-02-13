//
//  DefaultRowView.swift
//  Tangem
//
//  Created by Sergey Balashov on 26.07.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI

struct DefaultRowView: View {
    // TODO: Make @ObservedObject
    private let viewModel: DefaultRowViewModel

    init(viewModel: DefaultRowViewModel) {
        self.viewModel = viewModel
    }

    private var isTappable: Bool { viewModel.action != nil }

    var body: some View {
        if isTappable {
            Button {
                viewModel.action?()
            } label: {
                content
            }
            .buttonStyle(PlainButtonStyle())
        } else {
            content
        }
    }

    private var content: some View {
        HStack {
            Text(viewModel.title)
                .style(Fonts.Regular.body, color: Colors.Text.primary1)

            Spacer()

            detailsView

            if isTappable {
                Assets.chevron.image
            }
        }
        .lineLimit(1)
        .padding(.vertical, 14)
        .contentShape(Rectangle())
    }

    @ViewBuilder
    private var detailsView: some View {
        switch viewModel.detailsType {
        case .none:
            EmptyView()
        case .loader:
            ActivityIndicatorView(style: .medium, color: .gray)
        case .text(let string):
            Text(string)
                .style(Fonts.Regular.body, color: Colors.Text.tertiary)
        case .icon(let imageType):
            imageType.image
        }
    }
}

struct DefaultRowView_Preview: PreviewProvider {
    static let viewModel = DefaultRowViewModel(
        title: "App settings",
        detailsType: .text("A Long long long long long long long text"),
        action: nil
    )

    static var previews: some View {
        ZStack {
            Colors.Background.secondary

            DefaultRowView(viewModel: viewModel)
                .padding(.horizontal, 16)
        }
    }
}
