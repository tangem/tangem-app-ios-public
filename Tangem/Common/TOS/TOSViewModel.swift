//
//  TOSViewModel.swift
//  Tangem
//
//

import SwiftUI

class TOSViewModel: ObservableObject {
    let url = AppConstants.tosURL
    let bottomOverlayHeight: CGFloat
    let webViewModel: WebViewContainerViewModel

    init(bottomOverlayHeight: CGFloat = 116) {
        self.bottomOverlayHeight = bottomOverlayHeight

        webViewModel = .init(
            url: url,
            title: "",
            addLoadingIndicator: true,
            withCloseButton: false,
            withNavigationBar: false,
            contentInset: .init(top: 0, left: 0, bottom: bottomOverlayHeight / 2, right: 0)
        )
    }
}
