//
//  OrganizeTokensShadowModifier.swift
//  Tangem
//
//  Created by Andrey Fedorov on 31.07.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import SwiftUI

struct OrganizeTokensShadowAnimatableModifier: AnimatableModifier {
    var animatableData: Double {
        get { progress }
        set { progress = newValue }
    }

    private var progress: Double

    private var shadowColor: Color {
        // TODO: Andrey Fedorov - Dark mode support for shadows (IOS-3927)
        Color.black.opacity(0.08)
    }

    init(
        progress: Double
    ) {
        self.progress = progress
    }

    func body(content: Content) -> some View {
        return content
            .shadow(
                color: shadowColor.opacity(progress),
                radius: 14.0,
                y: 8.0
            )
    }
}
