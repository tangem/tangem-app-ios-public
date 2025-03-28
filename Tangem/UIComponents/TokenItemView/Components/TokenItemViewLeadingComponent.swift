//
//  TokenItemView.swift
//  Tangem
//
//

import SwiftUI
import BlockchainSdk

struct TokenItemViewLeadingComponent: View {
    let name: String
    let imageURL: URL?
    let customTokenColor: Color?
    let blockchainIconName: String?
    let hasMonochromeIcon: Bool
    let isCustom: Bool
    let networkBorderColor: Color

    init(
        name: String,
        imageURL: URL?,
        customTokenColor: Color?,
        blockchainIconName: String?,
        hasMonochromeIcon: Bool,
        isCustom: Bool,
        networkBorderColor: Color = Colors.Background.primary
    ) {
        self.name = name
        self.imageURL = imageURL
        self.customTokenColor = customTokenColor
        self.blockchainIconName = blockchainIconName
        self.hasMonochromeIcon = hasMonochromeIcon
        self.isCustom = isCustom
        self.networkBorderColor = networkBorderColor
    }

    var body: some View {
        TokenIcon(
            tokenIconInfo: .init(
                name: name,
                blockchainIconName: blockchainIconName,
                imageURL: imageURL,
                isCustom: isCustom,
                customTokenColor: customTokenColor,
                networkBorderColor: networkBorderColor
            ),
            size: .init(bothDimensions: 36.0)
        )
        .saturation(hasMonochromeIcon ? 0 : 1)
    }
}
