//
//  _ManageTokensView.swift
//  Tangem
//
//  Created by Andrey Fedorov on 20.09.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import SwiftUI

// TODO: Andrey Fedorov - Rename old manage tokens views with 'Legacy*' prefix
struct _ManageTokensView: View {
    @ObservedObject private var viewModel: ManageTokensSheetViewModel // TODO: Andrey Fedorov - Split this VM to header and main VMs

    init(
        viewModel: ManageTokensSheetViewModel
    ) {
        self.viewModel = viewModel
    }

    var body: some View {
        // TODO: Andrey Fedorov - Update bottom content offset when keyboard is shown
        LazyVStack(spacing: .zero) {
            ForEach(viewModel.dataSource(), id: \.self) { index in
                Button(action: viewModel.toggleItem) {
                    Text(index)
                        .font(.title3)
                        .foregroundColor(Colors.Text.primary1.opacity(0.8))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.all)
                }
                .background(Colors.Background.primary)

                Divider()
            }
        }
    }
}
