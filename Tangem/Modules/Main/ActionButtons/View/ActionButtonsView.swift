//
//  ActionButtonsView.swift
//  Tangem
//
//

import SwiftUI

struct ActionButtonsView: View {
    @ObservedObject var viewModel: ActionButtonsViewModel

    var body: some View {
        HStack(spacing: 8) {
            ForEach(viewModel.actionButtonViewModels) {
                ActionButtonView(viewModel: $0)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 16)
        .task {
            await viewModel.fetchData()
        }
    }
}
