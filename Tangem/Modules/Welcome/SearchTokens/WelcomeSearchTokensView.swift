//
//  WelcomeSearchTokensView.swift
//  Tangem
//
//

import SwiftUI

struct WelcomeSearchTokensView: View {
    @ObservedObject var viewModel: WelcomeSearchTokensViewModel

    var body: some View {
        NavigationView {
            content
        }
        .navigationViewStyle(.stack)
    }

    private var content: some View {
        ManageTokensListView(viewModel: viewModel.manageTokensListViewModel, isReadOnly: true)
            .scrollDismissesKeyboardCompat(.immediately)
            .navigationTitle(Text(Localization.commonSearchTokens))
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $viewModel.enteredSearchText.value, placement: .navigationBarDrawer(displayMode: .always))
            .keyboardType(.alphabet)
            .autocorrectionDisabled()
            .background(Colors.Background.primary.edgesIgnoringSafeArea(.all))
            .onAppear { viewModel.onAppear() }
            .onDisappear { viewModel.onDisappear() }
    }

    private var divider: some View {
        Divider()
            .padding([.leading])
    }
}
