//
//  ListFooterOverlayShadowView.swift
//  Tangem
//
//

import SwiftUI

struct ListFooterOverlayShadowView: View {
    var body: some View {
        LinearGradient(
            colors: [
                Colors.Background.primary.opacity(0.0),
                Colors.Background.primary.opacity(0.95),
            ],
            startPoint: .top,
            endPoint: .bottom
        )
        .allowsHitTesting(false)
        .ignoresSafeArea(edges: .bottom)
    }
}
