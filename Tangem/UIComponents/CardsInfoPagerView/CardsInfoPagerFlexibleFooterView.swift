//
//  CardsInfoPagerFlexibleFooterView.swift
//  Tangem
//
//

import SwiftUI

struct CardsInfoPagerFlexibleFooterView: View {
    let contentSize: CGSize
    let viewportSize: CGSize
    let headerTopInset: CGFloat
    let headerHeight: CGFloat
    let bottomContentInset: CGFloat

    private var footerViewHeight: CGFloat {
        let minContentSizeHeight = viewportSize.height - bottomContentInset + .ulpOfOne
        let maxContentSizeHeight = viewportSize.height + headerHeight + headerTopInset
        let contentSizeHeight = contentSize.height

        if contentSizeHeight >= minContentSizeHeight, contentSizeHeight < maxContentSizeHeight {
            return max(maxContentSizeHeight - contentSizeHeight, bottomContentInset)
        } else if contentSizeHeight >= maxContentSizeHeight {
            return bottomContentInset
        }

        return 0.0
    }

    var body: some View {
        Color.clear
            .frame(height: footerViewHeight)
    }
}
