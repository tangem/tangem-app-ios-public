//
//  MainBottomSheetHeaderViewModelDelegate.swift
//  Tangem
//
//

import Foundation

protocol MainBottomSheetHeaderViewModelDelegate: AnyObject {
    func isViewVisibleForHeaderViewModel(_ viewModel: MainBottomSheetHeaderViewModel) -> Bool
}
