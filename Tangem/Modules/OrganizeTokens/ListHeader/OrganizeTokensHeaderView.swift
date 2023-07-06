//
//  OrganizeTokensHeaderView.swift
//  Tangem
//
//  Created by Andrey Fedorov on 06.06.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import SwiftUI

struct OrganizeTokensHeaderView: View {
    @ObservedObject var viewModel: OrganizeTokensHeaderViewModel

    var body: some View {
        HStack(spacing: 8.0) {
            Group {
                FlexySizeButtonWithLeadingIcon(
                    title: viewModel.sortByBalanceButtonTitle,
                    icon: Assets.OrganizeTokens.byBalanceSortIcon.image,
                    isSelected: viewModel.isSortByBalanceEnabled,
                    action: viewModel.toggleSortState
                )

                FlexySizeButtonWithLeadingIcon(
                    title: viewModel.groupingButtonTitle,
                    icon: Assets.OrganizeTokens.makeGroupIcon.image,
                    isSelected: true,
                    action: viewModel.toggleGroupState
                )
            }
            // TODO: Andrey Fedorov - Proper shadow color and dark mode support (IOS-3927)
            .shadow(color: Colors.Button.primary.opacity(0.1), radius: 5.0)
            .background(
                Colors.Background
                    .primary
                    .cornerRadiusContinuous(10.0)
            )
        }
    }
}

// MARK: - Previews

struct OrganizeTokensHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizeTokensHeaderView(
            viewModel: .init()
        )
    }
}
