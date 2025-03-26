//
//  CardInfoPagePreviewConfig.swift
//  Tangem
//
//

import Foundation

struct CardInfoPagePreviewConfig: Identifiable {
    let id = UUID()
    let initiallySelectedIndex: Int
    let hasPullToRefresh: Bool
}
