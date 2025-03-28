//
//  InfinityFrameModifier.swift
//  Tangem
//
//

import SwiftUI

extension View {
    func infinityFrame(
        axis: Axis.Set = [.horizontal, .vertical],
        alignment: Alignment = .center
    ) -> some View {
        modifier(InfinityFrameModifier(axis: axis, alignment: alignment))
    }
}

// MARK: - Private implementation

private struct InfinityFrameModifier: ViewModifier {
    let axis: Axis.Set
    let alignment: Alignment

    func body(content: Content) -> some View {
        content
            .frame(
                minWidth: axis.contains(.horizontal) ? 0.0 : nil,
                maxWidth: axis.contains(.horizontal) ? .infinity : nil,
                minHeight: axis.contains(.vertical) ? 0.0 : nil,
                maxHeight: axis.contains(.vertical) ? .infinity : nil,
                alignment: alignment
            )
    }
}
