//
//  CardsInfoPagerBottomOverlayFactoryParams.swift
//  Tangem
//
//

import Foundation

struct CardsInfoPagerBottomOverlayFactoryParams {
    let isDraggingHorizontally: Bool
    let didScrollToBottom: Bool
    let scrollOffset: CGPoint
    let viewportSize: CGSize
    let contentSize: CGSize
    let scrollViewBottomContentInset: CGFloat
}
