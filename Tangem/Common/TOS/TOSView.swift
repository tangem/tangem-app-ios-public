//
//  TOSView.swift
//  Tangem
//
//

import SwiftUI

struct TOSView: View {
    @ObservedObject var viewModel: TOSViewModel

    var body: some View {
        WebViewContainer(viewModel: viewModel.webViewModel)
            .overlay(bottomOverlay)
            .edgesIgnoringSafeArea(.bottom)
            .navigationTitle(Localization.disclaimerTitle)
            .navigationBarTitleDisplayMode(.inline)
    }

    @ViewBuilder
    private var bottomOverlay: some View {
        VStack {
            Spacer()
            LinearGradient(
                colors: [
                    Colors.Background.primary.opacity(0),
                    Colors.Background.primary,
                    Colors.Background.primary,
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .frame(maxHeight: viewModel.bottomOverlayHeight)
            .allowsHitTesting(false)
        }
    }
}

#Preview {
    TOSView(viewModel: .init())
}
