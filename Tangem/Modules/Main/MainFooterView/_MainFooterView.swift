//
//  _MainFooterView.swift
//  Tangem
//
//  Created by Andrey Fedorov on 28.09.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import SwiftUI

// TODO: Andrey Fedorov - Rename and add dedicated view model (if needed)
struct _MainFooterView: View {
    var body: some View {
        VStack(spacing: 0.0) {
            FixedSpacer(height: Constants.spacerLength, length: Constants.spacerLength)

            ManageTokensBottomSheetHeaderView(searchText: .constant(""))
                .cornerRadius(24.0, corners: [.topLeft, .topRight]) // Replicates corner radius in `BottomScrollableSheet`
                .allowsHitTesting(false)
                .bottomScrollableSheetShadow()
        }
    }
}

// MARK: - Constants

private extension _MainFooterView {
    enum Constants {
        static let spacerLength = 14.0
    }
}
