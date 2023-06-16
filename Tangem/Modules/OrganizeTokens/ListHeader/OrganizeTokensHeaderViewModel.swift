//
//  OrganizeTokensHeaderViewModel.swift
//  Tangem
//
//  Created by Andrey Fedorov on 06.06.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

final class OrganizeTokensHeaderViewModel: ObservableObject {
    @Published var isSortByBalanceEnabled = true

    var sortByBalanceButtonTitle: String {
        return Localization.organizeTokensSortByBalance
    }

    @Published var isGroupingEnabled = true

    var groupingButtonTitle: String {
        return isGroupingEnabled
            ? Localization.organizeTokensGroup
            : Localization.organizeTokensUngroup
    }

    func toggleSortState() {
        isSortByBalanceEnabled.toggle()
        // TODO: Andrey Fedorov - Add actual implementation (IOS-3461)
    }

    func toggleGroupState() {
        isGroupingEnabled.toggle()
        // TODO: Andrey Fedorov - Add actual implementation (IOS-3461)
    }
}
