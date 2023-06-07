//
//  OrganizeTokensListItemViewModel.swift
//  Tangem
//
//  Created by m3g0byt3 on 06.06.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

struct OrganizeTokensListItemViewModel: Hashable, Identifiable {
    var id = UUID()
    var tokenName: String
    var tokenTotalSum: String
    var isDraggable: Bool
    var tokenIconViewModel: TokenIconViewModel
}
