//
//  OrganizeTokensListSection.swift
//  Tangem
//
//  Created by m3g0byt3 on 06.06.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

struct OrganizeTokensListSectionViewModel: Hashable, Identifiable {
    var id = UUID()
    var title: String
    var isDraggable: Bool
    var items: [OrganizeTokensListItemViewModel]
}
