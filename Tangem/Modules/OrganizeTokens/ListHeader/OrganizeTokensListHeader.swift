//
//  OrganizeTokensListHeader.swift
//  Tangem
//
//

import SwiftUI

struct OrganizeTokensListHeader: View {
    let viewModel: OrganizeTokensHeaderViewModel
    let horizontalInset: CGFloat
    let bottomInset: CGFloat

    var body: some View {
        OrganizeTokensHeaderView(viewModel: viewModel)
            .padding(.top, 8.0)
            .padding(.bottom, bottomInset)
            .padding(.horizontal, horizontalInset)
    }
}
