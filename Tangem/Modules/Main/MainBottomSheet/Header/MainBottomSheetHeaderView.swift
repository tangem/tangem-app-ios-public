//
//  MainBottomSheetHeaderView.swift
//  Tangem
//
//

import SwiftUI

struct MainBottomSheetHeaderView: View {
    @ObservedObject var viewModel: MainBottomSheetHeaderViewModel

    var body: some View {
        MainBottomSheetHeaderInputView(
            searchText: $viewModel.enteredSearchText,
            isTextFieldFocused: $viewModel.inputShouldBecomeFocused,
            allowsHitTestingForTextField: true,
            clearButtonAction: viewModel.clearSearchBarAction
        )
    }
}
