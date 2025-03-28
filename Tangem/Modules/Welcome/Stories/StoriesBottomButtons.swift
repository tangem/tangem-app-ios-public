//
//  StoriesBottomButtons.swift
//  Tangem
//
//

import SwiftUI

struct StoriesBottomButtons: View {
    let scanColorStyle: MainButton.Style
    let orderColorStyle: MainButton.Style

    @Binding var isScanning: Bool

    let scanCard: () -> Void
    let orderCard: () -> Void

    var body: some View {
        HStack {
            MainButton(
                title: Localization.homeButtonScan,
                icon: .trailing(Assets.tangemIcon),
                style: scanColorStyle,
                isLoading: isScanning,
                action: scanCard
            )

            MainButton(
                title: Localization.homeButtonOrder,
                style: orderColorStyle,
                isDisabled: isScanning,
                action: orderCard
            )
        }
    }
}

struct StoriesBottomButtons_Previews: PreviewProvider {
    static var previews: some View {
        StoriesBottomButtons(scanColorStyle: .primary, orderColorStyle: .secondary, isScanning: .constant(false)) {} orderCard: {}
    }
}
