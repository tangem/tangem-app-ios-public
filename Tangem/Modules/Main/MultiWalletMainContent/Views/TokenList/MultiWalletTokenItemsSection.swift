//
//  MultiWalletTokenItemsSection.swift
//  Tangem
//
//  Created by Andrew Son on 03/08/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

struct MultiWalletTokenItemsSection: Identifiable {
    var id: String { title ?? UUID().uuidString }

    let title: String?
    let tokenItemModels: [TokenItemViewModel]

    init(
        title: String?,
        tokenItemModels: [TokenItemViewModel]
    ) {
        self.title = title
        self.tokenItemModels = tokenItemModels
    }
}
