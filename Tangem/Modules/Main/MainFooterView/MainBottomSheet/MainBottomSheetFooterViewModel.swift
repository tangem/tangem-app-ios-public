//
//  MainBottomSheetFooterViewModel.swift
//  Tangem
//
//

import Foundation
import Combine
import CombineExt
import class UIKit.UIImage

final class MainBottomSheetFooterViewModel: ObservableObject {
    @Published private(set) var footerSnapshot: MainBottomSheetUIManager.FooterSnapshot?

    @Injected(\.mainBottomSheetUIManager) private var mainBottomSheetUIManager: MainBottomSheetUIManager

    private var subscription: AnyCancellable?

    init() {
        bind()
    }

    private func bind() {
        guard subscription == nil else {
            return
        }

        subscription = mainBottomSheetUIManager
            .footerSnapshotPublisher
            .eraseToOptional()
            .assign(to: \.footerSnapshot, on: self, ownership: .weak)
    }
}
