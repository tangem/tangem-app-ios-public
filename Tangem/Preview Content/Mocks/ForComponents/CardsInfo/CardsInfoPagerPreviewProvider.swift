//
//  CardsInfoPagerPreviewProvider.swift
//  Tangem
//
//  Created by Andrey Fedorov on 24/05/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

final class CardsInfoPagerPreviewProvider: ObservableObject {
    @Published var models: [CardInfoPagePreviewViewModel] = []

    init() {
        initializeModels()
    }

    private func initializeModels() {
        // Must match the amount of `CardInfoProvider` entities in `FakeCardHeaderPreviewProvider`
        let upperBound = 6
        models = (0 ..< upperBound).map { _ in
            CardInfoPagePreviewViewModel()
        }
    }
}
