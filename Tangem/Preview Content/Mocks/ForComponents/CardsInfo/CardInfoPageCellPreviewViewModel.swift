//
//  CardInfoPageCellPreviewViewModel.swift
//  Tangem
//
//  Created by Andrey Fedorov on 24/05/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

final class CardInfoPageCellPreviewViewModel: ObservableObject {
    let id = UUID()

    @Published var tapCount = 0

    var title: String {
        id.uuidString + " (\(tapCount))"
    }
}
