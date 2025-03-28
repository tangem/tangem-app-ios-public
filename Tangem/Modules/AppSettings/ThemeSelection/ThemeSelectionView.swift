//
//  ThemeSelectionView.swift
//  Tangem
//
//

import SwiftUI

struct ThemeSelectionView: View {
    @ObservedObject var viewModel: ThemeSelectionViewModel

    var body: some View {
        GroupedScrollView {
            GroupedSection(viewModel.themeViewModels) {
                DefaultSelectableRowView(data: $0, selection: $viewModel.currentThemeOption)
            } footer: {
                DefaultFooterView(Localization.appSettingsThemeSelectionFooter)
            }
        }
        .interContentPadding(8)
        .background(Colors.Background.secondary.ignoresSafeArea(edges: .all))
        .navigationTitle(Text(Localization.appSettingsThemeSelectorTitle))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ThemeSelectionView_Preview: PreviewProvider {
    static var previews: some View {
        NavigationView(content: {
            ThemeSelectionView(viewModel: .init())
        })
    }
}
