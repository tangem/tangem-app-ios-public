//
//  CardsInfoPagerPreviewProvider.swift
//  Tangem
//
//

import Foundation

final class CardsInfoPagerPreviewProvider: ObservableObject {
    @Published var pages: [CardInfoPagePreviewViewModel] = []

    private lazy var headerPreviewProvider = FakeCardHeaderPreviewProvider()

    init() {
        initializeModels()
    }

    private func initializeModels() {
        pages = headerPreviewProvider.models.map(CardInfoPagePreviewViewModel.init)
    }
}
