//
//  ManageTokensBottomSheetHeaderContainerView.swift
//  Tangem
//
//  Created by Andrey Fedorov on 05.10.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import SwiftUI

/// A temporary entity for integration and testing, subject to change.
struct ManageTokensBottomSheetHeaderContainerView: View {
    @ObservedObject var viewModel: ManageTokensBottomSheetViewModel

    var body: some View {
        ManageTokensBottomSheetHeaderView(searchText: $viewModel.searchText, textFieldAllowsHitTesting: true)
    }
}
