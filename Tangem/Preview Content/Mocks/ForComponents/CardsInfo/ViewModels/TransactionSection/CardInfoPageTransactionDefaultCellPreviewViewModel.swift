//
//  CardInfoPageTransactionDefaultCellPreviewViewModel.swift
//  Tangem
//
//

import Foundation

final class CardInfoPageTransactionDefaultCellPreviewViewModel: ObservableObject, Identifiable {
    let id = UUID()

    var title: String {
        id.uuidString + " (\(tapCount))"
    }

    @Published private var tapCount = 0

    func onTap() {
        tapCount += 1
    }
}
