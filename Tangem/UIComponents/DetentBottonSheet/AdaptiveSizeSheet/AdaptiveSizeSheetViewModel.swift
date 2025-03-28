//
//  AdaptiveSizeSheetViewModel.swift
//  Tangem
//
//

import SwiftUI

final class AdaptiveSizeSheetViewModel: ObservableObject {
    @Published var contentHeight: CGFloat = 0

    var containerHeight: CGFloat = 0

    var scrollViewAxis: Axis.Set {
        contentHeight > containerHeight ? .vertical : []
    }

    var scrollableContentBottomPadding: CGFloat {
        contentHeight > containerHeight ? defaultBottomPadding : 0
    }

    let defaultBottomPadding: CGFloat = 20
    let cornerRadius: CGFloat = 24
    let handleHeight: CGFloat = 20
}
