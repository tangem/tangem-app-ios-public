//
//  MarketsListOrderBottonSheetView.swift
//  Tangem
//
//

import SwiftUI

struct MarketsListOrderBottomSheetView: View {
    @ObservedObject var viewModel: MarketsListOrderBottomSheetViewModel

    var body: some View {
        VStack(spacing: .zero) {
            BottomSheetHeaderView(title: Localization.marketsSortByTitle)

            GroupedSection(viewModel.listOptionViewModel) {
                DefaultSelectableRowView(data: $0, selection: $viewModel.currentOrderType)
            }
            .settings(\.backgroundColor, Colors.Background.action)
        }
        .padding(.horizontal, 16)
        .padding(.bottom, 10)
    }
}
