//
//  _ManageTokensHeaderView.swift
//  Tangem
//
//  Created by Andrey Fedorov on 20.09.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import SwiftUI

// TODO: Andrey Fedorov - Rename old manage tokens views with 'Legacy*' prefix
struct _ManageTokensHeaderView: View {
    @ObservedObject private var viewModel: ManageTokensSheetViewModel // TODO: Andrey Fedorov - Split this VM to header and main VMs

    init(
        viewModel: ManageTokensSheetViewModel
    ) {
        self.viewModel = viewModel
    }

    var body: some View {
        TextField("Placeholder", text: $viewModel.searchText)
            .frame(height: 46.0)
            .padding(.horizontal, 12.0)
            .background(Colors.Field.primary)
            .cornerRadius(14.0)
            .padding(.init(top: 20.0, leading: 16.0, bottom: 34.0, trailing: 16.0)) // TODO: Andrey Fedorov - 34 is the safeAreaInsets.bottom, get it accordingly. Also test on notchless devices
            .background(Colors.Background.primary)
    }
}
