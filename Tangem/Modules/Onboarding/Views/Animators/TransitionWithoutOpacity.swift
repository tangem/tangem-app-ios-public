//
//  TransitionWithoutOpacity.swift
//  Tangem
//
//

import SwiftUI

struct TransitionWithoutOpacity: AnimatableModifier {
    var animatableData: CGFloat = 0
    init(_ x: CGFloat) {
        animatableData = x
    }

    func body(content: Content) -> some View {
        return content
    }
}

extension AnyTransition {
    static let withoutOpacity: AnyTransition = .modifier(active: TransitionWithoutOpacity(1), identity: TransitionWithoutOpacity(0))
    static let scaleOpacity: AnyTransition = .scale.combined(with: .opacity)
}
