//
//  RoundedBackgroundModifier.swift
//  Tangem
//
//

import SwiftUI

struct RoundedBackgroundModifier: ViewModifier {
    let verticalPadding: CGFloat
    let horizontalPadding: CGFloat
    let backgroundColor: Color
    let cornerRadius: CGFloat
    let geometryEffect: GeometryEffect?

    func body(content: Content) -> some View {
        content
            .padding(.vertical, verticalPadding)
            .padding(.horizontal, horizontalPadding)
            .background(
                backgroundColor
                    .matchedGeometryEffect(geometryEffect)
            )
            .cornerRadiusContinuous(cornerRadius)
    }
}

extension View {
    private static var defaultCornerRadius: CGFloat { 14 }
    private static var defaultVerticalPadding: CGFloat { 12 }
    private static var defaultHorizontalPadding: CGFloat { 14 }

    func roundedBackground(
        with color: Color,
        padding: CGFloat,
        radius: CGFloat = Self.defaultCornerRadius,
        geometryEffect: GeometryEffect? = .none
    ) -> some View {
        modifier(
            RoundedBackgroundModifier(
                verticalPadding: padding,
                horizontalPadding: padding,
                backgroundColor: color,
                cornerRadius: radius,
                geometryEffect: geometryEffect
            )
        )
    }

    func roundedBackground(
        with color: Color,
        verticalPadding: CGFloat,
        horizontalPadding: CGFloat,
        radius: CGFloat = Self.defaultCornerRadius,
        geometryEffect: GeometryEffect? = .none
    ) -> some View {
        modifier(
            RoundedBackgroundModifier(
                verticalPadding: verticalPadding,
                horizontalPadding: horizontalPadding,
                backgroundColor: color,
                cornerRadius: radius,
                geometryEffect: geometryEffect
            )
        )
    }

    func defaultRoundedBackground(
        with color: Color = Colors.Background.primary,
        verticalPadding: CGFloat = Self.defaultVerticalPadding,
        horizontalPadding: CGFloat = Self.defaultHorizontalPadding,
        cornerRadius: CGFloat = Self.defaultCornerRadius,
        geometryEffect: GeometryEffect? = .none
    ) -> some View {
        modifier(
            RoundedBackgroundModifier(
                verticalPadding: verticalPadding,
                horizontalPadding: horizontalPadding,
                backgroundColor: color,
                cornerRadius: cornerRadius,
                geometryEffect: geometryEffect
            )
        )
    }
}
