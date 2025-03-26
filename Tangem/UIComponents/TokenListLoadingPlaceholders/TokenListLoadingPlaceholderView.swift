//
//  TokenListLoadingPlaceholderView.swift
//  Tangem
//
//

import SwiftUI

struct TokenListLoadingPlaceholderView: View {
    var body: some View {
        VStack(spacing: 0.0) {
            TokenListSectionLoadingPlaceholderView()

            TokenListItemLoadingPlaceholderView(
                style: .tokenList(hasNetworkItemPlaceholder: false)
            )

            TokenListItemLoadingPlaceholderView(
                style: .tokenList(hasNetworkItemPlaceholder: true)
            )
        }
    }
}

// MARK: - Previews

struct TokenListLoadingPlaceholderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Colors.Background
                .secondary
                .ignoresSafeArea()

            TokenListLoadingPlaceholderView()
                .cornerRadiusContinuous(14.0)
                .padding()
                .infinityFrame(alignment: .top)
        }
    }
}
