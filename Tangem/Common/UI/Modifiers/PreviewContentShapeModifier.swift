//
//  PreviewContentShapeModifier.swift
//  Tangem
//
//

import SwiftUI

struct PreviewContentShapeModifier: ViewModifier {
    let cornerRadius: CGFloat
    let roundedCornerStyle: RoundedCornerStyle

    func body(content: Content) -> some View {
        let shape = RoundedRectangle(cornerRadius: cornerRadius, style: roundedCornerStyle)

        content.contentShape(.contextMenuPreview, shape)
    }
}

// MARK: - Convenience extensions

extension View {
    func previewContentShape(
        cornerRadius: CGFloat,
        roundedCornerStyle: RoundedCornerStyle = .continuous
    ) -> some View {
        modifier(PreviewContentShapeModifier(cornerRadius: cornerRadius, roundedCornerStyle: roundedCornerStyle))
    }
}
