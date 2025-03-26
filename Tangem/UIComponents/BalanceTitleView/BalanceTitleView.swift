//
//  BalanceTitleView.swift
//  Tangem
//
//

import SwiftUI

struct BalanceTitleView: View {
    let balance: AttributedString
    let isLoading: Bool

    var body: some View {
        SensitiveText(balance)
            .multilineTextAlignment(.leading)
            .truncationMode(.middle)
            .skeletonable(isShown: isLoading, size: .init(width: 102, height: 24), radius: 6)
    }
}
