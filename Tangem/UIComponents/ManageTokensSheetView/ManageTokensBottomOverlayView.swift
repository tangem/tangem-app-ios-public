//
//  ManageTokensBottomOverlayView.swift
//  Tangem
//
//  Created by Andrey Fedorov on 25.09.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import SwiftUI

struct ManageTokensBottomOverlayView: View {
    let viewModel: ManageTokensSheetViewModel

    @State private var shouldShowSheet = false

    var body: some View {
        let bottomContainer = Color.blue.frame(height: 100.0 - 34.0) // FIXME: Andrey Fedorov - Test only, remove when not needed

        // Native sheets prevent other sheets from being presented, this approach isn't feasible at all
        if #available(iOS 9999.0, *) {
            bottomContainer
                .sheet(isPresented: $shouldShowSheet) {
                    VStack(spacing: 0.0) {
                        Spacer(minLength: 40.0) // FIXME: Andrey Fedorov - The height of this spacer should be 20pt, but the system sheet collapses it too much when the small detent is active

                        _ManageTokensHeaderView(viewModel: viewModel)

                        ScrollView(.vertical, showsIndicators: true) { _ManageTokensView(viewModel: viewModel) }
                    }
                    .configureSheetPresentationController { controller in
                        let identifier = UISheetPresentationController.Detent.Identifier("com.tangem.ManageTokensLargestUndimmedDetent")
                        let constant = 100.0 - 34.0 // 34 is the safeAreaInsets.bottom, get it properly!
                        let largestUndimmedDetent: UISheetPresentationController.Detent

                        if #available(iOS 16.0, *) {
                            largestUndimmedDetent = .custom(identifier: identifier) { _ in constant }
                        } else {
                            largestUndimmedDetent = UISheetPresentationController.Detent.perform(
                                Selector("X2RldGVudFdpdGhJZGVudGlmaWVyOmNvbnN0YW50Og==".base64Decoded()!),
                                with: identifier,
                                with: constant
                            ).takeUnretainedValue() as! UISheetPresentationController.Detent
                        }

                        controller.largestUndimmedDetentIdentifier = identifier
                        controller.detents = [
                            largestUndimmedDetent,
                            .large(),
                        ]
                        controller.preferredCornerRadius = 24.0
                        controller.prefersGrabberVisible = true
                    }
                    .interactiveDismissDisabledCompat()
                }
                .task { @MainActor in
                    // FIXME: Andrey Fedorov - Workaround for native sheet presentation issues, get rid of it
                    try! await Task.sleep(seconds: 0.5)
                    shouldShowSheet = true
                }
        } else {
            bottomContainer
                .bottomScrollableSheet(
                    header: {
                        _ManageTokensHeaderView(viewModel: viewModel)
                    },
                    content: {
                        _ManageTokensView(viewModel: viewModel)
                    }
                )
        }
    }
}
