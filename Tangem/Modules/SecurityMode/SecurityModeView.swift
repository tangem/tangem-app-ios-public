//
//  SecurityModeView.swift
//  Tangem
//
//

import Foundation
import SwiftUI

struct SecurityModeView: View {
    @ObservedObject var viewModel: SecurityModeViewModel

    var body: some View {
        ZStack(alignment: .bottom) {
            Colors.Background.secondary.edgesIgnoringSafeArea(.all)

            GroupedScrollView {
                GroupedSection(viewModel.securityViewModels) {
                    DefaultSelectableRowView(data: $0, selection: $viewModel.currentSecurityOption)
                }
            }
            .interContentPadding(8)

            actionButton
        }
        .alert(item: $viewModel.error) { $0.alert }
        .navigationBarTitle(Text(Localization.cardSettingsSecurityMode), displayMode: .inline)
    }

    private var actionButton: some View {
        MainButton(
            title: Localization.commonSaveChanges,
            icon: .trailing(Assets.tangemIcon),
            isLoading: viewModel.isLoading,
            isDisabled: !viewModel.isActionButtonEnabled,
            action: viewModel.actionButtonDidTap
        )
        .padding(16)
    }
}

struct SecurityModeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SecurityModeView(viewModel: .init(
                securityOptionChangeInteractor: SecurityOptionChangingMock(),
                coordinator: SecurityModeCoordinator()
            ))
        }
    }
}
