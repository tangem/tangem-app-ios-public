//
//  AddCustomTokenNetworksListView.swift
//  Tangem
//
//

import SwiftUI

struct AddCustomTokenNetworksListView: View {
    @ObservedObject var viewModel: AddCustomTokenNetworksListViewModel

    var isWithPadding: Bool = true

    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 0) {
                ForEach(viewModel.itemViewModels, id: \.networkId) { itemViewModel in
                    AddCustomTokenNetworksListItemView(viewModel: itemViewModel)
                }
            }
            .background(Colors.Background.action)
            .cornerRadiusContinuous(14)
            .padding(.horizontal, isWithPadding ? 16 : 0)
        }
        .background(Colors.Background.tertiary.edgesIgnoringSafeArea(.all))
    }
}
